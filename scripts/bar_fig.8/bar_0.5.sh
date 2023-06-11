OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node \
                                -init samples/data/bar3/bar3_init0.5.node \
                                -handles samples/data/bar3/bar3_handles.txt \
                                -rw 0 \
                                -ra 0 \
                                -model arap \
                                -sys-rho 1e-1 \
                                -bird-threshold 0.1 \
                                -bird-lambda 1e4 \
                                -it 500
