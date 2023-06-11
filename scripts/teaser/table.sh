OMP_NUM_THREADS=8 ./build/local -rest samples/data/teaser_table/teaser_table_rest.node \
                                -init samples/data/teaser_table/teaser_table_init2.node 
                                -handles samples/data/teaser_table/teaser_table_handles2.txt \
                                -rw 0 \
                                -ra 0 \
                                -model arap \
                                -sys-rho 2e-4 \
                                -bird-threshold 0.01 \
                                -bird-lambda 1e4 \
                                -it 500
