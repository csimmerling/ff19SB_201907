#!/bin/bash

### update your path to AMBERHOME
#export AMBERHOME=/path/to/Amber19
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$AMBERHOME/lib

### cpu serial test
$AMBERHOME/bin/pmemd -O -i md.in -p scramble.parm7 -c scramble.rst -o md_pmemd.out

### cpu parallel test
mpirun -np 4 $AMBERHOME/bin/pmemd.MPI -O -i md.in -p scramble.parm7 -c scramble.rst -o md_pmemd_mpi.out

### gpu serial test, single precision
$AMBERHOME/bin/pmemd.cuda -O -i md.in -p scramble.parm7 -c scramble.rst -o md_pmemd_cuda_SPFP.out

### gpu serial test, double precision
$AMBERHOME/bin/pmemd.cuda_DPFP -O -i md.in -p scramble.parm7 -c scramble.rst -o md_pmemd_cuda_DPFP.out

### gpu parallel test, single precision
mpirun -np 2 $AMBERHOME/bin/pmemd.cuda.MPI -O -i md.in -p scramble.parm7 -c scramble.rst -o md_pmemd_cuda_SPFP_MPI.out

rm mdcrd mdinfo restrt logfile
