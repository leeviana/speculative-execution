#!/bin/sh

# defaults  
#./sim-outorder -redir:sim results/default-gcc benchmarks/cc1.alpha -O benchmarks/1stmt.i > results/default-gcc
#./sim-outorder -redir:sim results/default-anagram benchmarks/anagram.alpha words < benchmarks/anagram.in > OUT
#./sim-outorder -redir:sim results/default-compress95 benchmarks/compress95.alpha < benchmarks/compress95.in > OUT
#./sim-outorder -redir:sim results/default-go benchmarks/go.alpha 50 9 benchmarks/2stone9.in > OUT

# branch taken
./sim-outorder -redir:sim results/btaken-gcc -bpred taken benchmarks/cc1.alpha -O benchmarks/1stmt.i > results/btaken-gcc
./sim-outorder -redir:sim results/btaken-anagram -bpred taken benchmarks/anagram.alpha words < benchmarks/anagram.in > OUT
./sim-outorder -redir:sim results/btaken-compress95 -bpred taken benchmarks/compress95.alpha < benchmarks/compress95.in > OUT
./sim-outorder -redir:sim results/btaken-go -bpred taken benchmarks/go.alpha 50 9 benchmarks/2stone9.in > OUT

# branch not taken
./sim-outorder -redir:sim results/bnottaken-gcc -bpred nottaken benchmarks/cc1.alpha -O benchmarks/1stmt.i > results/bnottaken-gcc
./sim-outorder -redir:sim results/bnottaken-anagram -bpred nottaken benchmarks/anagram.alpha words < benchmarks/anagram.in > OUT
./sim-outorder -redir:sim results/bnottaken-compress95 -bpred nottaken benchmarks/compress95.alpha < benchmarks/compress95.in > OUT
./sim-outorder -redir:sim results/bnottaken-go -bpred nottaken benchmarks/go.alpha 50 9 benchmarks/2stone9.in > OUT


# branch perfect
./sim-outorder -redir:sim results/bperfect-gcc -bpred perfect benchmarks/cc1.alpha -O benchmarks/1stmt.i > results/bperfect-gcc
./sim-outorder -redir:sim results/bperfect-anagram -bpred perfect benchmarks/anagram.alpha words < benchmarks/anagram.in > OUT
./sim-outorder -redir:sim results/bperfect-compress95 -bpred perfect benchmarks/compress95.alpha < benchmarks/compress95.in > OUT
./sim-outorder -redir:sim results/bperfect-go -bpred perfect benchmarks/go.alpha 50 9 benchmarks/2stone9.in > OUT

# branch comb
./sim-outorder -redir:sim results/bcomb-gcc -bpred comb benchmarks/cc1.alpha -O benchmarks/1stmt.i > results/bcomb-gcc
./sim-outorder -redir:sim results/bcomb-anagram -bpred comb benchmarks/anagram.alpha words < benchmarks/anagram.in > OUT
./sim-outorder -redir:sim results/bcomb-compress95 -bpred comb benchmarks/compress95.alpha < benchmarks/compress95.in > OUT
./sim-outorder -redir:sim results/bcomb-go -bpred comb benchmarks/go.alpha 50 9 benchmarks/2stone9.in > OUT

# branch 2lev (2 level bit prediction)
./sim-outorder -redir:sim results/b2lev-gcc -bpred 2lev benchmarks/cc1.alpha -O benchmarks/1stmt.i > results/b2lev-gcc
./sim-outorder -redir:sim results/b2lev-anagram -bpred 2lev benchmarks/anagram.alpha words < benchmarks/anagram.in > OUT
./sim-outorder -redir:sim results/b2lev-compress95 -bpred 2lev benchmarks/compress95.alpha < benchmarks/compress95.in > OUT
./sim-outorder -redir:sim results/b2lev-go -bpred 2lev benchmarks/go.alpha 50 9 benchmarks/2stone9.in > OUT

# bpred 2lev 1 1024 4
./sim-outorder -redir:sim results/2lev-1-1024-4-gcc -bpred 2lev -bpred:2lev 1 1024 4 0 benchmarks/cc1.alpha -O benchmarks/1stmt.i > results/2lev-1-1024-4-gcc
./sim-outorder -redir:sim results/2lev-1-1024-4-anagram -bpred 2lev -bpred:2lev 1 1024 4 0 benchmarks/anagram.alpha words < benchmarks/anagram.in > OUT
./sim-outorder -redir:sim results/2lev-1-1024-4-compress -bpred 2lev -bpred:2lev 1 1024 4 0 benchmarks/compress95.alpha < benchmarks/compress95.in > OUT
./sim-outorder -redir:sim results/2lev-1-1024-4-go -bpred 2lev -bpred:2lev 1 1024 4 0 benchmarks/go.alpha 50 9 benchmarks/2stone9.in > OUT

# bpred 2lev 1 1024 16
./sim-outorder -redir:sim results/2lev-1-1024-16-gcc -bpred 2lev -bpred:2lev 1 1024 16 0 benchmarks/cc1.alpha -O benchmarks/1stmt.i > results/2lev-1-1024-4-gcc
./sim-outorder -redir:sim results/2lev-1-1024-16-anagram -bpred 2lev -bpred:2lev 1 1024 16 0 benchmarks/anagram.alpha words < benchmarks/anagram.in > OUT
./sim-outorder -redir:sim results/2lev-1-1024-16-compress -bpred 2lev -bpred:2lev 1 1024 16 0 benchmarks/compress95.alpha < benchmarks/compress95.in > OUT
./sim-outorder -redir:sim results/2lev-1-1024-16-go -bpred 2lev -bpred:2lev 1 1024 16 0 benchmarks/go.alpha 50 9 benchmarks/2stone9.in > OUT

# bpred 2lev 2 1024 8
./sim-outorder -redir:sim results/2lev-2-1024-8-gcc -bpred 2lev -bpred:2lev 2 1024 8 0 benchmarks/cc1.alpha -O benchmarks/1stmt.i > results/2lev-1-1024-4-gcc
./sim-outorder -redir:sim results/2lev-2-1024-8-anagram -bpred 2lev -bpred:2lev 2 1024 8 0 benchmarks/anagram.alpha words < benchmarks/anagram.in > OUT
./sim-outorder -redir:sim results/2lev-2-1024-8-compress -bpred 2lev -bpred:2lev 2 1024 8 0 benchmarks/compress95.alpha < benchmarks/compress95.in > OUT
./sim-outorder -redir:sim results/2lev-2-1024-8-go -bpred 2lev -bpred:2lev 2 1024 8 0 benchmarks/go.alpha 50 9 benchmarks/2stone9.in > OUT

# bpred 2lev 4 1024 8
./sim-outorder -redir:sim results/2lev-4-1024-8-gcc -bpred 2lev -bpred:2lev 4 1024 8 0 benchmarks/cc1.alpha -O benchmarks/1stmt.i > results/2lev-1-1024-4-gcc
./sim-outorder -redir:sim results/2lev-4-1024-8-anagram -bpred 2lev -bpred:2lev 4 1024 8 0 benchmarks/anagram.alpha words < benchmarks/anagram.in > OUT
./sim-outorder -redir:sim results/2lev-4-1024-8-compress -bpred 2lev -bpred:2lev 4 1024 8 0 benchmarks/compress95.alpha < benchmarks/compress95.in > OUT
./sim-outorder -redir:sim results/2lev-4-1024-8-go -bpred 2lev -bpred:2lev 4 1024 8 0 benchmarks/go.alpha 50 9 benchmarks/2stone9.in > OUT
