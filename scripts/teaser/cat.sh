OMP_NUM_THREADS=8 ./build/local -rest samples/data/teaser_cat/teaser_cat_rest.node \
                                -init samples/data/teaser_cat/teaser_cat_init1.node \
                                -handles samples/data/teaser_cat/teaser_cat_handles.txt \
                                -rw 0 \
                                -ra 0 \
                                -sys-rho 5e3 \
                                -bird-threshold 0.01 \
                                -bird-lambda 1e4 \
                                -it 500
