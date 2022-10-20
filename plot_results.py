import matplotlib.pyplot as plt
import matplotlib
import numpy as np
import pandas as pd
import argparse
import pathlib
import os
import csv

#print("Using:",matplotlib.get_backend())
#matplotlib.use("pgf")
#matplotlib.rcParams.update({
#    "pgf.texsystem": "pdflatex",
#    'font.family': 'serif',
#    'text.usetex': True,
#    'pgf.rcfonts': False,
#})
#print("Using:",matplotlib.get_backend())

benchmark_name_map = {
    'parsec.canneal' : 'Canneal',
    'parsec.fluidanimate' : 'Fluid Animate',
    'parsec.blackscholes' : 'Black-Scholes',
    'parsec.streamcluster' : 'Stream cluster',
    'parsec.bodytrack' : 'Body track',
    'parsec.facesim': 'Facesim',
    'parsec.ferret' : 'Ferret',
    'parsec.vips' : 'Vips'
}

categories_name_map = {
    'SFences': 'SW Fences',
    'SWFences': 'SW Fences',
    'SW Fences 4C': 'SW Fences 4 Cores',
    'SW Fences ASM Out': 'SW Fences + ASM',
    'HWFences': 'HW Fences',
    'TSO 4C': 'HW Fences 4 Cores',
    'TSO const': 'HW Fences const',
    'HW Fences ASM Out': 'HW Fences + ASM',
    'No fences': 'No Fences',
    'No Fences 4C': 'No Fences 4 Cores',
    'No Fences ASM Out': 'No Fences + ASM',
    'No': 'No Fences'
}

def scan_path(path):
    files = []
    for (dirpath, dirnames, filenames) in os.walk(path):
        files.extend(filenames)
        break

    files_per_cat = {}
    for fname in files:
        prefix = fname.split("-", 1)[0]

        if not prefix in files_per_cat:
            files_per_cat[prefix] = []
        files_per_cat[prefix].append(fname)

    return files_per_cat

def extract_runtimes_CSV(filename):
    runtimes = {}
    with open(os.path.join(filename), newline='') as csvfile:
        reader = csv.DictReader(csvfile, delimiter=';', strict=True)
        line_num = 0
        errors_printed = set()
        for row in reader:
            line_num += 1
            bench = row["bench"]
            value = float(row["value"])

            if int(row["retval"]) != 0 and not "retval" in errors_printed:
                errors_printed.add("retval")
                print(f"Non zero exit code found for {filename} {line_num}!")
            if value == 0 and not "val" in errors_printed:
                errors_printed.add("val")
                print(f"Runtime is zero for {filename} {line_num}!")
            if bench == "":
                print(f"Benchmark id missing for {filename} {line_num}!")
                continue

            if bench not in runtimes:
                runtimes[bench] = []
            runtimes[bench].append(value)
    return runtimes

def parse_files_in_path(path, bench_id_filter_list, invert_filter):
    grouped_files =  scan_path(path)
    categories = list(grouped_files.keys())

    dframes = {}
    ordered_runtimes = {}
    benchmarks = set()
    for cat, file_list in grouped_files.items():
        ordered_runtimes[cat] = {}

        for filename in file_list:
            fp = os.path.join(path, filename)
            runtimes = extract_runtimes_CSV(fp)
            
            df2 = pd.read_csv(fp, sep = ';')
            if cat in dframes:
                dframes[cat] = pd.concat([dframes[cat], df2], ignore_index=True)
            else:
                dframes[cat] = df2
            
            for bench, runs in runtimes.items():
                # filter unwanted benchmarks
                if not bench_id_filter_list is None and (bench in bench_id_filter_list) is invert_filter:
                    continue

                if not bench in ordered_runtimes[cat]:
                    ordered_runtimes[cat][bench] = []
                ordered_runtimes[cat][bench].extend(runs)
                benchmarks.add(bench)

    df_out = None
    
    for cat,df in dframes.items():
        df = df.replace({'tag': {'none': cat}})
        
        #df['tag'] = cat
        if df_out is None:
            df_out = df
        else:
            df_out = pd.concat([df_out, df], ignore_index=True)
        
    filepath = f'./results.csv'  
    df_out.to_csv(filepath, sep=';')
    
    
    b = list(benchmarks)
    b.sort()
    c = list(categories)
    c.sort()
    return  {"categories": c, "benchmarks": b, "runtimes": ordered_runtimes}

def convert_to_dataframe(runtimes, benchmarks_ordered, categories):
    max_num_runtimes = 0
    for cat, benchlist in runtimes.items():
        for bench in benchlist:
            max_num_runtimes = max(max_num_runtimes, len(bench))


    convert_category_names = lambda x: categories_name_map[x] if x in categories_name_map else x
    category_names = [*map(convert_category_names, list(categories))]
    benchmark_names = [*map(benchmark_name_map.get, benchmarks_ordered)]

    inv_bench_map = {v: k for k, v in benchmark_name_map.items()}

    print(benchmarks_ordered)
    print(benchmark_names)
    index = pd.MultiIndex.from_product([range(max_num_runtimes), benchmark_names], names=["Num", "Benchmark"])

    data = []
    for i, bench in index:
        tmp = []
        b_id = inv_bench_map[bench] if bench in inv_bench_map else bench
        for cat in categories:
            if b_id in runtimes[cat] and i < len(runtimes[cat][b_id]):
                tmp.append(runtimes[cat][b_id][i])
            else:
                tmp.append(np.nan)
        data.append(tmp)

    df = pd.DataFrame(data, index=index, columns=category_names)
    #print(df)
    return df


def parse_args():
    parser = argparse.ArgumentParser(description='Program to print benchmark results in a nice plot')
    parser.add_argument('--log-scale', '-L', dest='log_scale', action='store_true',
                            help='changes the y axis to use logarithmic intervals instead of linear')
    parser.add_argument('--filter-invert', '-I', dest='filter_invert', action='store_true',
                            help='inverts the filter argument to only show non specified benchmarks')
    parser.add_argument('--filter', '-F', dest='filter_ids', nargs='+',
                            help='shows only the matching benchmark id(s). Known ids ['+ ', '.join(benchmark_name_map.keys())+']')

    parser.add_argument('--path', '-P', dest='bench_results_path', type=pathlib.Path, required=True,
                            help='specifies the directory containing th benchmark results')

    parser.add_argument('--width', '-W', dest='plot_width', type=int, default=10,
                        help='specifies the plot width')
    parser.add_argument('--height', '-H', dest='plot_height', type=int, default=10,
                        help='specifies the plot height')
    
    parser.add_argument('--output', '-O', dest='output_file', type=pathlib.Path,
                        help='target file to export plot to')
    
    parser.add_argument('--start-zero', '-Z', dest='start_zero', action='store_true',
                        help='forces the axis to start at zero')
    return parser.parse_args()


prog_args = parse_args()
print(prog_args)

res = parse_files_in_path(prog_args.bench_results_path, prog_args.filter_ids, prog_args.filter_invert)
df = convert_to_dataframe(res["runtimes"], res["benchmarks"], res["categories"])

def plot_figure():
    plt.rcParams["figure.dpi"] = 100
    grouped = df.groupby(level='Benchmark')
    ax_series = grouped.boxplot(
    #        stacked=False,
            sharey=False,
            figsize=(prog_args.plot_width / 100, prog_args.plot_height / 100),
    #        title='Hardware Fences vs Software Fences (Fence Instructions) vs No Fences',
        #  yerr=errors
                    )

    for index, ax in ax_series.items():
        ax.set_ylabel("runtime in seconds")
        ax.tick_params(axis='x', labelrotation=45)
        if prog_args.log_scale is True:
            ax.set_yscale('log')
        if prog_args.start_zero is True:
            ax.set_ylim(ymin=0)

        
    #ax.set_axisbelow(True)
    #ax.yaxis.grid(color='gray', linestyle='dashed')
    #ax.tick_params(axis='x', labelrotation=45)

    plt.tight_layout()


plot_figure()
if not prog_args.output_file is None:
    plt.savefig(prog_args.output_file)
else:
    plt.show()


# https://docs.python.org/3/library/csv.html
# https://matplotlib.org/stable/tutorials/introductory/pyplot.html
# https://stackoverflow.com/a/35915807


