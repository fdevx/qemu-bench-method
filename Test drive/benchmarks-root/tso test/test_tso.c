// FROM https://raw.githubusercontent.com/saagarjha/TSOEnabler/master/testtso/main.c
// but modified a little
//  main.c
//  testtso
//
//  Created by Saagar Jha on 5/28/21.
//

#include <pthread.h>
#include <stdatomic.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>

#define MAX_ITERATIONS 1000000

atomic_uint barrier;
atomic_uint data[10000];

void *writer(void *unused) {
	(void)unused;
	while (true) {
		for (size_t i = 0; i < sizeof(data) / sizeof(*data); ++i) {
			atomic_fetch_add_explicit(data + i, 1, memory_order_relaxed);
			// https://bugs.llvm.org/show_bug.cgi?id=50564
//			atomic_signal_fence(memory_order_acq_rel);
		}
		atomic_fetch_add_explicit(&barrier, 1, memory_order_release);
	}
	return NULL;
}

void *reader(void *unused) {
	(void)unused;
	unsigned int count = 0;
	while (true) {
		for (size_t i = 0; i < sizeof(data) / sizeof(*data) - 1; ++i) {
			unsigned int value2 = atomic_load_explicit(data + i + 1, memory_order_relaxed);
			// https://bugs.llvm.org/show_bug.cgi?id=50564
//			atomic_signal_fence(memory_order_acq_rel);
			unsigned int value1 = atomic_load_explicit(data + i, memory_order_relaxed);
			if (value1 < value2) {
				printf("Detected load-store reorder after %d iterations!\n", count);
				fflush(stdout);
				exit(0);
			}
		}

		while (count == atomic_load_explicit(&barrier, memory_order_acquire))
			;
		++count;
		
		if(count > MAX_ITERATIONS) {
			printf("Ran test for %d iterations and no load-store reorder was detected!\n", count);
			fflush(stdout);
			exit(0);
		}
		
		if(count % (MAX_ITERATIONS/10) == 0 ) {
			printf("%d0%%\n", count / (MAX_ITERATIONS/10));
		}
	}
	return NULL;
}

int main() {
	pthread_t writer_thread;
	pthread_t reader_thread;
	pthread_create(&writer_thread, NULL, writer, NULL);
	pthread_create(&reader_thread, NULL, reader, NULL);
	pthread_join(reader_thread, NULL);
	pthread_join(writer_thread, NULL);
}
 
