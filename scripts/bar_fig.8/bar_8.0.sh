OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node \
                                -init samples/data/bar3/bar3_init8.node \
                                -handles samples/data/bar3/bar3_handles.txt \
                                -model arap \
                                -sys_rho 1e-1 \
                                -sc_l1-threshold 0.1 \
                                -sc_l1_w 1e4 \
                                -it 500
