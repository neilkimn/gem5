#!/bin/sh

python3 run.py ../../build/X86/gem5.opt two_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_c -rp RandomRP --name primes_random_baseline_2 -n 10

python3 run.py ../../build/X86/gem5.opt two_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_c -rp TrueRandomRP --name primes_true_random_2 -n 10

