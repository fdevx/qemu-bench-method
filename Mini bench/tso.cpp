// FROM https://raw.githubusercontent.com/saagarjha/TSOEnabler/master/testtso/main.c
// but modified a little
//  main.c
//  testtso
//
//  Created by Saagar Jha on 5/28/21.
//

#include <cstdlib>
#include <chrono>
#include <cstring>
#include <pthread.h>
#include <stdatomic.h>
#include <stdbool.h>
#include <stddef.h>
#include <signal.h>
#include <unistd.h>

#include <sys/sysctl.h>

//#define MAX_ITERATIONS 1000000
int NUM_ITERS = 10000;
int enable_tso = 0;

atomic_uint barrier;
atomic_uint data[10000];

bool done=false;

void sig_handler(int signum){
	if(done==true) {
		exit(1);
	}
	done = true;
}


void *writer(void *unused) {
	if(enable_tso) {
		int tsoEnable = 1;
		size_t sizeOfFlag = sizeof(tsoEnable);
		int errNum = sysctlbyname("kern.tso_enable", NULL,
								  &sizeOfFlag, &tsoEnable, sizeOfFlag);

		printf("TSO: %d\n", errNum);
	}

	auto start = std::chrono::steady_clock::now();
	(void)unused;
	while (!done) {
		for (size_t i = 0; i < sizeof(data) / sizeof(*data); ++i) {
			atomic_fetch_add_explicit(data + i, 1, memory_order_relaxed);
			// https://bugs.llvm.org/show_bug.cgi?id=50564
//			atomic_signal_fence(memory_order_acq_rel);
		}
		atomic_fetch_add_explicit(&barrier, 1, memory_order_release);
	}
	auto end = std::chrono::steady_clock::now();

	std::chrono::duration<double> diff = end-start;
	printf("Set runtime %f\n", diff.count());

	return NULL;
}

void *reader(void *unused) {
	if(enable_tso) {
		int tsoEnable = 1;
		size_t sizeOfFlag = sizeof(tsoEnable);
		int errNum = sysctlbyname("kern.tso_enable", NULL,
								  &sizeOfFlag, &tsoEnable, sizeOfFlag);

		printf("TSO: %d\n", errNum);
	}

	(void)unused;
	unsigned int count = 0;

	auto start = std::chrono::steady_clock::now();
	while (!done) {
		for (size_t i = 0; i < sizeof(data) / sizeof(*data) - 1; ++i) {
			unsigned int value2 = atomic_load_explicit(data + i + 1, memory_order_relaxed);
			// https://bugs.llvm.org/show_bug.cgi?id=50564
//			atomic_signal_fence(memory_order_acq_rel);
			unsigned int value1 = atomic_load_explicit(data + i, memory_order_relaxed);
			if (value1 < value2) {
				// do nothing
			}
		}

		while (count == atomic_load_explicit(&barrier, memory_order_acquire))
			;
		++count;

		/*if(count > MAX_ITERATIONS) {
			printf("Ran test for %d iterations and no load-store reorder was detected!\n", count);
			fflush(stdout);
			exit(0);
		}

		if(count % (MAX_ITERATIONS/10) == 0 ) {
			printf("%d0%%\n", count / (MAX_ITERATIONS/10));
		}*/
		if(count >= NUM_ITERS) {
			done = true;
			break;
		}
	}
	auto end = std::chrono::steady_clock::now();

	std::chrono::duration<double> diff = end-start;
	printf("Test runtime %f\n", diff.count());

	return NULL;
}

int main(int argc, char** argv) {
	for(int i=1; i<argc; i++) {
		if(strncmp(argv[i], "-I=", 3) == 0) {
			NUM_ITERS = strtol(argv[i]+3, NULL, 10);
		}
		if(strcmp(argv[i], "-tso") == 0) {
			enable_tso = 1;
		}
	}


	signal(SIGTERM,sig_handler);
	signal(SIGALRM,sig_handler);
	signal(SIGINT,sig_handler);

	pthread_t writer_thread;
	pthread_t reader_thread;
	pthread_create(&writer_thread, NULL, writer, NULL);
	pthread_create(&reader_thread, NULL, reader, NULL);
	pthread_join(reader_thread, NULL);
	pthread_join(writer_thread, NULL);
}
 
