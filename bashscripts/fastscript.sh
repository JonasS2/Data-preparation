#!/bin/bash

FILES=/beegfs/prj/internship_jschimmer/raw_data/*

for file in $FILES

do 

echo "Processing $file"

sbatch submitscript.sh $file

done
