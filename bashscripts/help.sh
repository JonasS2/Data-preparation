#!/bin/bash

FILES=`ls -d *`


module load stringtie

for file in $FILES


do

echo $file /beegfs/prj/internship_jschimmer/stringtie/$file/stringtie.gtf
 
done

