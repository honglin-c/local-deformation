# Local Deformation for Interactive Shape Editing

### [Project Page](https://www.cs.columbia.edu/cg/local-deformation/)  | [Paper](https://arxiv.org/abs/2210.00124)

<img src="https://github.com/honglin-c/local-deformation/blob/main/.github/images/teaser.png" width="800">

Official implementation for the paper:
> **[Simulating Physics with Implicit Neural Spatial Representations](https://www.cs.columbia.edu/cg/local-deformation/)**  
> [Honglin Chen](https://www.cs.columbia.edu/~honglinchen/)<sup>1</sup>, [Changxi Zheng](http://www.cs.columbia.edu/~cxz/)<sup>1</sup>, [Kevin Wampler](http://www.kevinwampler.com/homepage/index.html)<sup>2</sup><br>
> <sup>1</sup>Columbia University, <sup>2</sup>Adobe Research <br>
> SIGGRAPH 2023 (Conference Track)

## Installation

This code is adapted from the [WRAPD framework](https://www-users.cse.umn.edu/~brow2327/wrapd/) to support local elastic Neo-Hookean and ARAP deformation.

To compile the code, just `mkdir build`, `cd build`, `cmake ..  -DCMAKE_CXX_COMPILER=g++-12` and `make -j8`.

To run the code, run the follwing command in the project root directory (for instance, to run the Neo-Hookean pig example):

`OMP_NUM_THREADS=8 ./build/local -rest samples/data/pig/pig_rest.node -init samples/data/pig/pig_init0.4.node -handles samples/data/pig/pig_handles.txt -rw 0 -ra 0 -sys-rho 1e4 -bird-threshold 0.5  -bird-lambda 1e4`

To run the pig example in the teaser,

`OMP_NUM_THREADS=8 ./build/local -rest samples/data/pig/pig_rest.node -init samples/data/pig/pig_init_teaser.node -handles samples/data/pig/pig_handles.txt -rw 0 -ra 0 -sys-rho 1e4 -bird-threshold 0.5  -bird-lambda 1e4 -it 500`

We provide the scripts to run various examples in `samples/tests/run_all.sh`.

## Dependencies

**Required:** Git, CMake, BLAS, LAPACK, GFORTRAN, OpenMP

**Strongly recommended:** [PARDISO](https://www.pardiso-project.org/)

On Ubuntu the required dependencies can be installed with the following command:

    sudo apt-get install git cmake libblas-dev liblapack-dev libgfortran-9-dev

PARDISO is strongly recommended. Without PARIDSO our algorithm will perform worse than we reported in the paper. If PARDISO is not detected then our algorithm falls back to using Eigen for linear solver operations.

**To install PARDISO:**
Go to https://www.pardiso-project.org/ and follow the instructions for downloading the library and configuring your license.
Note that you will need to place a license file in your root user directory.

## Installation

1. Verify that all the dependencies are installed (see above) 
2. Clone the repository and go into to the project root directory.
3. Copy the PARDISO library file (ending in `.so`) to `deps/pardiso/`
4. Run `mkdir build && cd build && cmake .. && make -j`
5. Go back to the project root directory

## Using the software (example)

To run the application you will need to specify the number of OpenMP threads to be used.
This is done by prepending the command with `OMP_NUM_THREADS=N`, where *N* is number of threads provided to the application.
For example, to run the software with 8 threads, type:

    OMP_NUM_THREADS=8 ./build/local -rest <rest_mesh> -init <init_mesh> -handles <handles_file>

The meshes should be .node files. An accompanying .ele file must share the same name and be in the same directory.
The list of handles should be a .txt file containing a list of vertex indices for pinning in place.

Example input meshes from the paper are located in: `samples/data/`

The output mesh and data will be saved into a directory in `output/`.

## Optional arguments

There are many optional arguments that can be provided to tune the algorithm and enable/disable particular features. For a complete list of options type:

    ./build/local --help


## Citation
```
@inproceedings{chen2023local,
      title={Local Deformation for Interactive Shape Editing},
      author={Honglin Chen and Changxi Zheng and Kevin Wampler},
      booktitle = {ACM SIGGRAPH 2023 Conference Proceedings},
      year = {2023}
    }
```