#PBS -q bigmem
#PBS -l nodes=1:ppn=24
#PBS -l walltime=4:00:00
#PBS -N Pilon_run_Hybrid
#PBS -o Pilon_Hybrid.out
#PBS -j oe
#PBS -A loni_selu_gt
#PBS -m abe
#PBS -M zachary.nikolakis@selu.edu

cd /work/zach/genome_practical/

 java -Xmx120G -jar /work/zach/pilon-1.22.jar --threads 20 --genome ../clownfish_genome/data/assembled/Hybrid_assembly.fasta --outdir pilon_output  --changes --tracks --diploid --bam hybrid_assembly/sorted.bam > Hybrid-pilon.log
