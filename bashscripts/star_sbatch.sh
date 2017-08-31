#!/bin/bash

#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 20
#SBATCH --mem=100G

module load star

mkdir -p $3

STAR --genomeDir /beegfs/biodb/genomes/mus_musculus/GRCm38_87/star --runThreadN 10 --readFilesIn $1 $2 --sjdbGTFfile /beegfs/biodb/genomes/mus_musculus/GRCm38_87/GRCm38.87.gtf --readFilesCommand zcat --outFileNamePrefix $3/ --outSAMtype BAM SortedByCoordinate --outSAMstrandField intronMotif


