#!/bin/bash

#copy update CMAP patch file to $AMBERHOME
cp amber_patch/update.201906 $AMBERHOME

#copy ff19SB files to $AMBERHOME
cp forcefield_files/leaprc.protein.ff19SB into $AMBERHOME/dat/leap/cmd/
cp forcefield_files/frcmod.ff19SB $AMBERHOME/dat/leap/parm/
cp forcefield_files/parm19.dat $AMBERHOME/dat/leap/parm/
cp forcefield_files/amino19.lib $AMBERHOME/dat/leap/lib/
cp forcefield_files/frcmod.ff19SB_XXX $AMBERHOME/dat/leap/parm/

#copy test case in $AMBERHOME/test
cp -r test/test_MDengine/ff19SB/ $AMBERHOME/test/
cp -r test/test_MDengine/cuda/ff19SB/ $AMBERHOME/test/cuda/
