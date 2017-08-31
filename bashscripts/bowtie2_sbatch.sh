#!/bin/bash

#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 20
#SBATCH --mem=20G
#SBATCH -J "bowtie2 rRNA filtering"



module load bowtie2


bowtie2 -x /beegfs/biodb/genomes/mus_musculus/rRNA_cluster/mus-musculus.rRNA -1 $1 -2 $2 -S /dev/null --omit-sec-seq --threads 20 --mm --seed 1337 --time --un-conc-gz $3.fastq.gz 2> $3.log
