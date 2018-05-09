#!/bin/bash
#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=6:00:00
#PBS -N minimap
#PBS -o minimap.out
#PBS -j oe
#PBS -A loni_selu_gt
#PBS -m abe
#PBS -M zachary.nikolakis@selu.edu

cd /work/zach/genome_practical/hybrid_assembly/
/work/zach/minimap2-2.10_x64-linux/minimap2 -ax sr -t 20 Hybrid_assembly.fasta /work/zach/clownfish_genome/data/raw_data_illumina/mega.fq > aln.sam
