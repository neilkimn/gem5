import subprocess
import argparse
import os

def collect_data(name, n):
    filename = f"run_{n}_dim"
    os.makedirs("results/" + name, exist_ok=True)

    for f in os.listdir("m5out"):
        os.system(f"cp m5out/{f} results/{name}/{filename}_{f}") 

def run():
    parser = argparse.ArgumentParser()
    parser.add_argument("gem5_binary")
    parser.add_argument("config_file")
    parser.add_argument("benchmark_binary")

    parser.add_argument("-n", type=int, default=10, help="Number of times to run benchmark.")

    parser.add_argument("-rp", "--replacement-policy", help="Either RandomRP or TrueRandomRP")

    parser.add_argument("--name", help="Name of parameter of interest. Used to organize outputs.")

    args = parser.parse_args()

    # run benchmark workload
    for i in range(args.n):
        if args.replacement_policy:
            benchmark_program = subprocess.run([args.gem5_binary, args.config_file, args.benchmark_binary, args.replacement_policy])
        else:
            benchmark_program = subprocess.run([args.gem5_binary, args.config_file, args.benchmark_binary])
        collect_data(args.name, i)

if __name__ == "__main__":
    run()
