#!/bin/bash

marker=fastq.1
FILES=`ls TAC*fastq.1.gz`

module load star

for file in $FILES


do

file2="${file/fastq.1/fastq.2}"


out=`expr ${file/$marker/} : '\(.*\)\..*\.'`

sbatch /beegfs/prj/internship_jschimmer/star_sbatch.sh $file $file2 ../star/$out
#echo ../star/$out 
done
