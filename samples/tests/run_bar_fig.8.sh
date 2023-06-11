OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node -init samples/data/bar3/bar3_init0.5.node -handles samples/data/bar3/bar3_handles.txt -rw 0 -ra 0 -model arap -sys-rho 1e-1 -bird-threshold 0.1  -bird-lambda 1e4 -it 500
rm -rf output_bar3_init0.5
cp -r output output_bar3_init0.5

OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node -init samples/data/bar3/bar3_init1.node -handles samples/data/bar3/bar3_handles.txt -rw 0 -ra 0 -model arap -sys-rho 1e-1 -bird-threshold 0.1  -bird-lambda 1e4 -it 500
rm -rf output_bar3_init1
cp -r output output_bar3_init1

OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node -init samples/data/bar3/bar3_init2.node -handles samples/data/bar3/bar3_handles.txt -rw 0 -ra 0 -model arap -sys-rho 1e-1 -bird-threshold 0.1  -bird-lambda 1e4 -it 500
rm -rf output_bar3_init2
cp -r output output_bar3_init2

OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node -init samples/data/bar3/bar3_init3.node -handles samples/data/bar3/bar3_handles.txt -rw 0 -ra 0 -model arap -sys-rho 1e-1 -bird-threshold 0.1  -bird-lambda 1e4 -it 500
rm -rf output_bar3_init3
cp -r output output_bar3_init3

OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node -init samples/data/bar3/bar3_init4.node -handles samples/data/bar3/bar3_handles.txt -rw 0 -ra 0 -model arap -sys-rho 1e-1 -bird-threshold 0.1  -bird-lambda 1e4 -it 500
rm -rf output_bar3_init4
cp -r output output_bar3_init4

OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node -init samples/data/bar3/bar3_init5.node -handles samples/data/bar3/bar3_handles.txt -rw 0 -ra 0 -model arap -sys-rho 1e-1 -bird-threshold 0.1  -bird-lambda 1e4 -it 500
rm -rf output_bar3_init5
cp -r output output_bar3_init5

OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node -init samples/data/bar3/bar3_init6.node -handles samples/data/bar3/bar3_handles.txt -rw 0 -ra 0 -model arap -sys-rho 1e-1 -bird-threshold 0.1  -bird-lambda 1e4 -it 500
rm -rf output_bar3_init6
cp -r output output_bar3_init6

OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node -init samples/data/bar3/bar3_init7.node -handles samples/data/bar3/bar3_handles.txt -rw 0 -ra 0 -model arap -sys-rho 1e-1 -bird-threshold 0.1  -bird-lambda 1e4 -it 500
rm -rf output_bar3_init7
cp -r output output_bar3_init7

OMP_NUM_THREADS=8 ./build/local -rest samples/data/bar3/bar3_rest.node -init samples/data/bar3/bar3_init8.node -handles samples/data/bar3/bar3_handles.txt -rw 0 -ra 0 -model arap -sys-rho 1e-1 -bird-threshold 0.1  -bird-lambda 1e4 -it 500
rm -rf output_bar3_init8
cp -r output output_bar3_init8