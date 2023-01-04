#!/bin/sh

#python3 run.py ../../build/X86/gem5.opt two_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_cpp --name primes_baseline -n 1

#python3 run.py ../../build/X86/gem5.opt two_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_cpp --name primes_4GHz -n 1

#python3 run.py ../../build/X86/gem5.opt two_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_cpp --name primes_400MHz -n 1

#python3 run.py ../../build/X86/gem5.opt two_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_cpp --name primes_DDR3_2133 -n 1

#python3 run.py ../../build/X86/gem5.opt two_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_cpp --name primes_LPDDR2_S4_1066 -n 1

#python3 run.py ../../build/X86/gem5.opt two_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_cpp --name primes_L1_assoc_16 -n 1

#python3 run.py ../../build/X86/gem5.opt three_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_cpp --name primes_three_level -n 1

#python3 run.py ../../build/X86/gem5.opt two_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_cpp -rp RandomRP --name primes_random_rp -n 10

#python3 run.py ../../build/X86/gem5.opt two_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_cpp -rp TrueRandomRP --name primes_true_random_rp -n 10

python3 run.py ../../build/X86/gem5.opt three_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_cpp -rp RandomRP --name primes_three_level_random_rp -n 10

python3 run.py ../../build/X86/gem5.opt three_level.py ../../tests/test-progs/primes/bin/x86/linux/primes_cpp -rp TrueRandomRP --name primes_three_level_true_random_rp -n 10