#PBS -q workq
#PBS -l nodes=1:ppn=20
#PBS -l walltime=2:00:00
#PBS -N SAM_to_BAM_prac
#PBS -o SMA_to_BAM_prac.out
#PBS -j oe
#PBS -A loni_selu_gt
#PBS -m abe
#PBS -M zachary.nikolakis@selu.edu


module load samtools
cd /work/zach/genome_practical/hybrid_assembly
samtools view -S -@ 20 -b aln.sam > aln.bam
#samtools merge mega.bam aln-peSRR6255796.fastq.sam.bam aln-peSRR6255798.fastq.sam.bam aln-peSRR6255799.fastq.sam.bam aln-peSRR6262202.fastq.sam.bam aln-peSRR6266482.fastq.sam.bam aln-peSRR6266483.fastq.sam.bam aln-peSRR6266484.fastq.sam.bam
/work/zach/sambamba_v0.6.6 sort -o sorted.bam -p -t 20 aln.bam
#samtools sort -@ 20 -m 3.2 mega.bam -o mega.sorted.bam
samtools index -@ 20 aln.sorted.bam
