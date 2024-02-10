OMP_NUM_THREADS=8 ./build/local -rest samples/data/pig/pig_rest.node \
                                -init samples/data/pig/pig_init_teaser.node \
                                -handles samples/data/pig/pig_handles.txt \
                                -sys_rho 5e5 \
                                -sc_l1-threshold 0.01 \
                                -sc_l1_w 1e4 \
                                -it 500
