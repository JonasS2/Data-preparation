#!/bin/bash

#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 2
#SBATCH --mem=10G
#SBATCH -J "fastqc"
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=schimmer@stud.uni-heidelberg.de
 

module load fastqc
module load java

fastqc $1 -o /beegfs/prj/internship_jschimmer/fastqc
