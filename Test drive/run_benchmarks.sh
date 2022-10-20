#!/bin/bash
bench_results_path="/results"
bench_runner="native"

bench_iterations_default=20
bench_threads_default=4
bench_dataset_default="simlarge"


bench_result="$(date +'%d-%m-%Y')"

read -p "Please enter a prefix for the results: " bench_prefix
bench_result="$bench_prefix-$bench_result"

read -p "Benchmark iterations [$bench_iterations_default]: " bench_iterations
bench_iterations=${bench_iterations:-$bench_iterations_default}

read -p "Benchmark threads [$bench_threads_default]: " bench_threads
bench_threads=${bench_threads:-$bench_threads_default}

read -p "Dataset [$bench_dataset_default]: " bench_dataset
bench_dataset=${bench_dataset:-$bench_dataset_default}

echo "============================="
echo 
echo "Configuration:"
echo "Prefix: $bench_prefix"
echo "Iterations: $bench_iterations"
echo "Threads: $bench_threads"
echo "Dataset: $bench_dataset"

read -p "Press enter to start"

bench_tag="$bench_prefix:$bench_dataset:$bench_threads"

function run_bench_by_name() {
    local bench_name=$1
    
    python bench.py -c /test/a2a-benchmarks/config -r "$bench_runner" -n "$bench_threads" -i "$bench_iterations" -b "$bench_name" -o "$bench_results_path/$bench_result.csv" -d "$bench_dataset" -t "$bench_tag"
}


cd /test/a2a-benchmarks
mkdir -p $bench_results_path

run_bench_by_name "parsec.blackscholes"
run_bench_by_name "parsec.bodytrack"
run_bench_by_name "parsec.canneal"
run_bench_by_name "parsec.dedup"
run_bench_by_name "parsec.facesim"
run_bench_by_name "parsec.ferret"
run_bench_by_name "parsec.fluidanimate"
run_bench_by_name "parsec.freqmine"
run_bench_by_name "parsec.streamcluster"
run_bench_by_name "parsec.swaptions"
run_bench_by_name "parsec.vips"
