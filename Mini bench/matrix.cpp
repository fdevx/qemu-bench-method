#include <vector>
#include <chrono>
#include <random>
#include <memory>
#include <iostream>
#include <cstdlib>
#include <cstring>

#include <string>
#include <functional>
#include <barrier>
#include <thread>

#include <sys/sysctl.h>

using namespace std;

int NUM_ITERS = 10;
int NUM_THREADS = 1;
bool enable_tso;


barrier<function<void()>>* bench_start_barrier = nullptr;

vector<float> simpleMatrixMul(vector<float> a, vector<float> b_t, int n);

void benchmark(int th_num);


int main(int argc, char** argv) {
    auto prog_start =  chrono::steady_clock::now();
    
    
    for(int i=1; i<argc; i++) {
        if(strncmp(argv[i], "-I=", 3) == 0) {
            NUM_ITERS = strtol(argv[i]+3, nullptr, 10);
        }
        if(strncmp(argv[i], "-T=", 3) == 0) {
            NUM_THREADS = strtol(argv[i]+3, nullptr, 10);
        }
        if(strcmp(argv[i], "-tso") == 0) {
            enable_tso = true;
        }
    }
    
    cout << "Memory stress test using matrix multiplication" << endl;
    cout << "Current configuration:" << endl;
    cout << "Threads: " << NUM_THREADS << endl;
    cout << "Iterations: " << NUM_ITERS << endl;
    cout << "TSO: " << (enable_tso ? "yes" : "no") << endl;
    
    
    auto on_completion = [prog_start]() noexcept { 
        // locking not needed here
        auto cur = chrono::steady_clock::now();
        chrono::duration<double> elapsed_seconds = cur - prog_start;
        cout << "Barrier passed at " << elapsed_seconds.count() << "s after program start" << endl;
    };
    
    bench_start_barrier = new barrier(NUM_THREADS, function<void()>(on_completion));


    vector<thread> threads;
    if(NUM_THREADS > 1) {
        for(int i=1; i < NUM_THREADS; i++) {
            threads.emplace_back(benchmark, i);
        }
    }
    benchmark(0);

    for (auto& th : threads) {
        th.join();
    }
}



float random_float() {
    static random_device rd;
    static mt19937 gen{rd()};
    uniform_real_distribution<float> dist{};
    return dist(gen);
}

void initialize_matrix(float *m, int n) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            m[i * n + j] = random_float();
        }
    }
}

void transpose_matrix(float* m, int n) {
    float tmp;
    for(int i=0; i<n; i++) {
        for (int j = i+1; j < n; j++) {
            tmp = m[i*n + j];
            m[i*n + j] = m[j*n + i];
            m[j*n + i] = tmp;
        }
    }
}

void benchmark(int th_num) {
    if(enable_tso) {
        int tsoEnable = 1;
        size_t sizeOfFlag = sizeof(tsoEnable);
        int errNum = sysctlbyname("kern.tso_enable", NULL,
                                  &sizeOfFlag, &tsoEnable, sizeOfFlag);

        cout << "[" << th_num << "] TSO status: " << (errNum == 0 ? "enabled" : to_string(errNum).c_str()) << endl;
    }

    bench_start_barrier->arrive_and_wait();
    
    int n = 2700;
    
    vector<float> a(n * n, 0.0f);
    vector<float> b_t(n * n, 0.0f);
    
    cout << "[" << th_num << "] Initializing " << n << "x" << n << " matricies..." << endl;
    
    initialize_matrix(a.data(), n);
    initialize_matrix(b_t.data(), n);
    
    transpose_matrix(b_t.data(), n);
    
    
    if(NUM_THREADS > 1) {
        cout << "[" << th_num << "] Waiting for other threads to finish initialization..." << endl;
    }
    bench_start_barrier->arrive_and_wait();
    
    cout << "[" << th_num << "] Starting " << NUM_ITERS << " runs..." << endl;
    
    std::chrono::duration<double> diff;
    
    for(int i=0; i < NUM_ITERS; i++) {
        cout << i << " " << flush;
        auto start = chrono::steady_clock::now();
        simpleMatrixMul(a, b_t, n);
        auto end = chrono::steady_clock::now();
        
        diff += end - start;
    }
    
    
    cout << "\n[" << th_num << "] Runtime for " << NUM_ITERS << " iterations: " << diff.count() << endl;
}


vector<float> simpleMatrixMul(vector<float> a, vector<float> b_t, int n) {
    vector<float> c;
    c.resize(n*n);
    
    
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
             c[n * i  + j] = 0.0f;
             for(int k = 0; k < n; k++) {
                  c[n * i + j] += a[n * i + k] * b_t[n * i + k];
             }
        }
    }
    return c;
}
