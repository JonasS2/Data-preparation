#!/bin/bash

marker=_001_1
FILES=`ls Iso*001_1*.gz`

module load bowtie2

for file in $FILES


do

file2="${file/001_1/001_2}"


out=`expr ${file/$marker/} : '\(.*\)\..*\.'`

sbatch /beegfs/prj/internship_jschimmer/bowtie2_sbatch.sh $file $file2 ../bowtie2/$out

done
