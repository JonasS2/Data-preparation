#!/bin/bash

#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 20
#SBATCH --mem=100G
#SBATCH -J "Stringtie"



stringtie $1 -p 20 -G /beegfs/biodb/genomes/mus_musculus/GRCm38_87/GRCm38.87.gtf -e -o $2/stringtie.gtf -j 2 -C $2/reference_transcripts_full_coverage.gtf

