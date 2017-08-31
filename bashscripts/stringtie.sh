#!/bin/bash

#marker=
FILES=`ls -d Iso*`


module load stringtie

for file in $FILES


do

#out=`expr ${file/$marker/} : '\(.*\)\..*\.'`

mkdir ../stringtie/$file 

sbatch /beegfs/prj/internship_jschimmer/stringtie_sbatch.sh ./$file/Aligned.sortedByCoord.out.bam ../stringtie/$file

 
done
