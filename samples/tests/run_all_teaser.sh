OMP_NUM_THREADS=8 ./build/local -rest samples/data/pig/pig_rest.node -init samples/data/pig/pig_init0.4.node -handles samples/data/pig/pig_handles.txt -rw 0 -ra 0 -sys-rho 5e5 -bird-threshold 0.01  -bird-lambda 1e4 -it 500

OMP_NUM_THREADS=8 ./build/local -rest samples/data/pig/pig_rest.node -init samples/data/pig/pig_init0.4.node -handles samples/data/pig/pig_handles.txt -rw 0 -ra 0 -model arap  -sys-rho 1e-1  -bird-threshold 0.01  -bird-lambda 1e4 -it 500

OMP_NUM_THREADS=8 ./build/local -rest samples/data/pig/pig_rest.node -init samples/data/pig/pig_init_teaser.node -handles samples/data/pig/pig_handles.txt -rw 0 -ra 0 -sys-rho 5e5 -bird-threshold 0.01  -bird-lambda 1e4 -it 500

OMP_NUM_THREADS=8 ./build/local -rest samples/data/table_cat/table_cat_rest.node -init samples/data/table_cat/table_cat_init1.node -handles samples/data/table_cat/table_cat_handles.txt  -rw 0 -ra 0 -sys-rho 5e3 -bird-threshold 0.01  -bird-lambda 1e4  -it 500

OMP_NUM_THREADS=8 ./build/local -rest samples/data/table_table/table_table_rest.node -init samples/data/table_table/table_table_init2.node -handles samples/data/table_table/table_table_handles2.txt  -rw 0 -ra 0 -model arap -sys-rho 2e-4 -bird-threshold 0.01  -bird-lambda 1e4  -it 500

OMP_NUM_THREADS=8 ./build/local -rest samples/data/table_apple/table_apple_rest.node -init samples/data/table_apple/table_apple_init1.node -handles samples/data/table_apple/table_apple_handles.txt  -rw 0 -ra 0 -sys-rho 1e3 -bird-threshold 0.04  -bird-lambda 1e4  -it 500

OMP_NUM_THREADS=8 ./build/local -rest samples/data/table_mat/table_mat_rest.node -init samples/data/table_mat/table_mat_init1.node -handles samples/data/table_mat/table_mat_handles.txt  -rw 0 -ra 0 -sys-rho 1e3 -bird-threshold 0.04  -bird-lambda 1e4  -it 500

OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node -init samples/data/bar3/bar3_init8.node -handles samples/data/bar3/bar3_handles.txt -rw 0 -ra 0 -sys-rho 1e4 -bird-threshold 5.0  -bird-lambda 1e4 -it 500

