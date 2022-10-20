import pandas as pd
import sys
import signal

columns=[
    "CPU Power",
    "GPU Power",
    "DRAM Power",
    "Package Power",

    "E-Cluster Power",
    "E-Cluster frequency",
    "E-Cluster usage",
    "P-Cluster Power",
    "P-Cluster frequency",
    "P-Cluster usage",

    "CPU 0 (E) frequency",
    "CPU 0 (E) usage",
    "CPU 1 (E) frequency",
    "CPU 1 (E) usage",
    "CPU 2 (E) frequency",
    "CPU 2 (E) usage",
    "CPU 3 (E) frequency",
    "CPU 3 (E) usage",
    "CPU 4 (P) frequency",
    "CPU 4 (P) usage",
    "CPU 5 (P) frequency",
    "CPU 5 (P) usage",
    "CPU 6 (P) frequency",
    "CPU 6 (P) usage",
    "CPU 7 (P) frequency",
    "CPU 7 (P) usage",
]

def parse_list_lambda(colname, value_offset, value_type, value_transformer = None):
    if value_transformer == None:
        return lambda word_list, indx: (colname, (value_type(word_list[indx+value_offset])))
    else:
        return lambda word_list, indx: (colname, (value_transformer(value_type(word_list[indx+value_offset]), word_list, indx)))

power_transformer=(lambda val,b,c: val*1000 if b[c+2] == "W" else val)
frequency_transformer=(lambda val,b,c: val/1000 if b[c+2] == "MHz" else val)
percentage_parser=(lambda v: float(v.strip("%")))
percentage_transformer=(lambda v, b, c: v/100)

parse_info = {
    "E-Cluster" : {
        "Power:": (parse_list_lambda("E-Cluster Power", 1, value_type=int, value_transformer=power_transformer)),
        "HW": {
            "active": {
                "frequency:": (parse_list_lambda("E-Cluster frequency", 1, value_type=float, value_transformer=frequency_transformer)),
                "residency:": (parse_list_lambda("E-Cluster usage", 1, value_type=percentage_parser, value_transformer=percentage_transformer)),
            }
        }
    },
    "P-Cluster" : {
        "Power:": (parse_list_lambda("P-Cluster Power", 1, value_type=int, value_transformer=power_transformer)),
        "HW": {
            "active": {
                "frequency:": (parse_list_lambda("P-Cluster frequency", 1, value_type=float, value_transformer=frequency_transformer)),
                "residency:": (parse_list_lambda("P-Cluster usage", 1, value_type=percentage_parser, value_transformer=percentage_transformer)),
            }
        }
    },
    "CPU": {
        "Power:": (parse_list_lambda("CPU Power", 1, value_type=int, value_transformer=power_transformer)),
        "0": {
            "frequency:": (parse_list_lambda("CPU 0 (E) frequency", 1, value_type=float, value_transformer=frequency_transformer)),
            "active": {
                "residency:": (parse_list_lambda("CPU 0 (E) usage", 1, value_type=percentage_parser, value_transformer=percentage_transformer)),
            }
        },
        "1": {
            "frequency:": (parse_list_lambda("CPU 1 (E) frequency", 1, value_type=float, value_transformer=frequency_transformer)),
            "active": {
                "residency:": (parse_list_lambda("CPU 1 (E) usage", 1, value_type=percentage_parser, value_transformer=percentage_transformer)),
            }
        },
        "2": {
            "frequency:": (parse_list_lambda("CPU 2 (E) frequency", 1, value_type=float, value_transformer=frequency_transformer)),
            "active": {
                "residency:": (parse_list_lambda("CPU 2 (E) usage", 1, value_type=percentage_parser, value_transformer=percentage_transformer)),
            }
        },
        "3": {
            "frequency:": (parse_list_lambda("CPU 3 (E) frequency", 1, value_type=float, value_transformer=frequency_transformer)),
            "active": {
                "residency:": (parse_list_lambda("CPU 3 (E) usage", 1, value_type=percentage_parser, value_transformer=percentage_transformer)),
            }
        },
        "4": {
            "frequency:": (parse_list_lambda("CPU 4 (P) frequency", 1, value_type=float, value_transformer=frequency_transformer)),
            "active": {
                "residency:": (parse_list_lambda("CPU 4 (P) usage", 1, value_type=percentage_parser, value_transformer=percentage_transformer)),
            }
        },
        "5": {
            "frequency:": (parse_list_lambda("CPU 5 (P) frequency", 1, value_type=float, value_transformer=frequency_transformer)),
            "active": {
                "residency:": (parse_list_lambda("CPU 5 (P) usage", 1, value_type=percentage_parser, value_transformer=percentage_transformer)),
            }
        },
        "6": {
            "frequency:": (parse_list_lambda("CPU 6 (P) frequency", 1, value_type=float, value_transformer=frequency_transformer)),
            "active": {
                "residency:": (parse_list_lambda("CPU 6 (P) usage", 1, value_type=percentage_parser, value_transformer=percentage_transformer)),
            }
        },
        "7": {
            "frequency:": (parse_list_lambda("CPU 7 (P) frequency", 1, value_type=float, value_transformer=frequency_transformer)),
            "active": {
                "residency:": (parse_list_lambda("CPU 7 (P) usage", 1, value_type=percentage_parser, value_transformer=percentage_transformer)),
            }
        }
    },
    "GPU": {
        "Power:": (parse_list_lambda("GPU Power", 1, value_type=int, value_transformer=power_transformer))
    },
    "DRAM": {
        "Power:": (parse_list_lambda("DRAM Power", 1, value_type=int, value_transformer=power_transformer))
    },
    "Package": {
        "Power:": (parse_list_lambda("Package Power", 1, value_type=int, value_transformer=power_transformer))
    }
}



cpu_info = pd.DataFrame(columns=columns)


def signal_handler(sig, frame):
    print('You pressed Ctrl+C!')
    print('Saving values...')
    print(cpu_info.T)
    cpu_info.to_csv('cpu_info.csv', sep=";")
    sys.exit(0)
signal.signal(signal.SIGINT, signal_handler)

num_iters_between_save=6
iters=0

cpu_row = None
for line in sys.stdin:
    if line.startswith("*** Sampled system activity"):
        if not cpu_row is None:
            print(f"{num_iters_between_save-iters}", end=' ')
            cpu_info = pd.concat([cpu_info, cpu_row], ignore_index=True)
            iters += 1

            if iters >= num_iters_between_save:
                iters = 0
                print("\nSaving values...")
                print(cpu_info.T)
                cpu_info.to_csv('cpu_info.csv', sep=";")

        cpu_row = pd.DataFrame([[0]*len(columns)], columns=columns)
        continue

    words=line.split()
    parse_stage = parse_info

    for i,word in enumerate(words,start=0):
        if word not in parse_stage:
            break
        parse_stage = parse_stage[word]

        if callable(parse_stage):
            col,val = parse_stage(words, i)
            cpu_row.loc[:, (col, 0)] = val
           # print(f"Adding {val} to column {col}")
            break

cpu_info = pd.concat([cpu_info, cpu_row], ignore_index=True)
print("")
if iters != 0:
    print("Closing program saving values....")
    cpu_info.to_csv('cpu_info.csv', sep=";")
