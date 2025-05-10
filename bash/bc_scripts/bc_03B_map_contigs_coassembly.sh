#!/bin/bash

#SBATCH --job-name="bc_03B_map_contigs_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=150Gb
#SBATCH -t 12:00:00
#SBATCH --output=bc_03B_map_contigs_coassembly.out
#SBATCH --error=bc_03B_map_contigs_coassembly.err
#SBATCH -p genomics


cd /projects/b1052/Zhen/pdna_meta/


module load bowtie2/2.4.5

module load samtools/1.10.1


# this is the 1st BC sample

bowtie2 -p 10 -x ./bc_03_coverage_coassembly/coassembly --very-sensitive-local -1 ./bc_01_qc/out_3aBC_S106_R1_001.fastq -2 ./bc_01_qc/out_3aBC_S106_R2_001.fastq| \
samtools view -bS -@ 10| \
samtools sort -@ 10 -o ./bc_03_coverage_coassembly/3aBC/3aBC.sorted.bam

samtools index ./bc_03_coverage_coassembly/3aBC/3aBC.sorted.bam

samtools flagstat -@ 10 -O tsv ./bc_03_coverage_coassembly/3aBC/3aBC.sorted.bam > ./bc_03_coverage_coassembly/3aBC/3aBC.flagstat.tsv



# this is the 2nd BC sample

bowtie2 -p 10 -x ./bc_03_coverage_coassembly/coassembly --very-sensitive-local -1 ./bc_01_qc/out_9aBC_S107_R1_001.fastq -2 ./bc_01_qc/out_9aBC_S107_R2_001.fastq| \
samtools view -bS -@ 10| \
samtools sort -@ 10 -o ./bc_03_coverage_coassembly/9aBC/9aBC.sorted.bam

samtools index ./bc_03_coverage_coassembly/9aBC/9aBC.sorted.bam

samtools flagstat -@ 10 -O tsv ./bc_03_coverage_coassembly/9aBC/9aBC.sorted.bam > ./bc_03_coverage_coassembly/9aBC/9aBC.flagstat.tsv