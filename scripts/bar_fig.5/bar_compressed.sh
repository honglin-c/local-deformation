OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node \
                                -init samples/data/bar3/bar3_compress_init1.node \
                                -handles samples/data/bar3/bar3_handles.txt \
                                -rw 0 \
                                -ra 0 \
                                -sys-rho 5e5 \
                                -bird-threshold 0.1 \
                                -bird-lambda 1e4 \
                                -it 500
