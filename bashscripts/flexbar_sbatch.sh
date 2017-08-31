#!/bin/bash

#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 20
#SBATCH --mem=1G
#SBATCH -J "flexbar paired"



flexbar -r $1 -p $2 -t $3 -n 20 -z GZ -m 30 -u 0 -q TAIL -qt 28 -as "AGATCGGAAGAG" -qf sanger -j
