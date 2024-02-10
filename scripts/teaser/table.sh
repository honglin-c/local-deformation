OMP_NUM_THREADS=8 ./build/local -rest samples/data/teaser_table/teaser_table_rest.node \
                                -init samples/data/teaser_table/teaser_table_init2.node \
                                -handles samples/data/teaser_table/teaser_table_handles2.txt \
                                -model arap \
                                -sys_rho 2e-4 \
                                -sc_l1-threshold 0.01 \
                                -sc_l1_w 1e4 \
                                -it 500
