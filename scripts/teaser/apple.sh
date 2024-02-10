OMP_NUM_THREADS=8 ./build/local -rest samples/data/teaser_apple/teaser_apple_rest.node \
                                -init samples/data/teaser_apple/teaser_apple_init1.node \
                                -handles samples/data/teaser_apple/teaser_apple_handles.txt \
                                -sys_rho 1e3 \
                                -sc_l1-threshold 0.04 \
                                -sc_l1_w 1e4 \
                                -it 500
