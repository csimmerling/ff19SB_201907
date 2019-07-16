#!/bin/bash
$AMBERHOME/bin/sander -O -i single_point_ene.input -p scramble.prmtop -c scramble.inpcrd -y trajectory.nc -o single_point_ene.output  
rm restrt
