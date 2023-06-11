OMP_NUM_THREADS=8 ./build/local -rest samples/data/teaser_apple/teaser_apple_rest.node \
                                -init samples/data/teaser_apple/teaser_apple_init1.node \
                                -handles samples/data/teaser_apple/teaser_apple_handles.txt \
                                -rw 0 \
                                -ra 0 \
                                -sys-rho 1e3 \
                                -bird-threshold 0.04 \
                                -bird-lambda 1e4 \
                                -it 500
