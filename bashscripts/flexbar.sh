#!/bin/bash


marker=_R1
FILES=`ls Iso*R1*`

module load flexbar

for file in $FILES


do

file2="${file/R1/R2}"


out=`expr ${file/$marker/} : '\(.*\)\..*\.'`

#echo $file

sbatch /beegfs/prj/internship_jschimmer/flexbar_sbatch.sh $file $file2 ../flexbar/$out
  
# flexbar -r $file -p $file2 -t ../flexbar/$out -n 20 -z GZ -m 30 -u 0 -q TAIL -qt 28 -as "AGATCGGAAGAG" -qf sanger -j

done

