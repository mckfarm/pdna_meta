#!/bin/bash

#SBATCH --job-name="ss_03B_map_contigs_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=150Gb
#SBATCH -t 12:00:00
#SBATCH --output=ss_03B_map_contigs_coassembly.out
#SBATCH --error=ss_03B_map_contigs_coassembly.err
#SBATCH -p genomics


cd /projects/b1052/Zhen/pdna_meta/


module load bowtie2/2.4.5

module load samtools/1.10.1


# this is the 1st SS sample

bowtie2 -p 10 -x ./ss_03_coverage_coassembly/coassembly --very-sensitive-local -1 ./ss_01_qc/out_15aSS_S103_R1_001.fastq -2 ./ss_01_qc/out_15aSS_S103_R2_001.fastq| \
samtools view -bS -@ 10| \
samtools sort -@ 10 -o ./ss_03_coverage_coassembly/15aSS/15aSS.sorted.bam

samtools index ./ss_03_coverage_coassembly/15aSS/15aSS.sorted.bam

samtools flagstat -@ 10 -O tsv ./ss_03_coverage_coassembly/15aSS/15aSS.sorted.bam > ./ss_03_coverage_coassembly/15aSS/15aSS.flagstat.tsv



# this is the 2nd SS sample

bowtie2 -p 10 -x ./ss_03_coverage_coassembly/coassembly --very-sensitive-local -1 ./ss_01_qc/out_29aSS_S104_R1_001.fastq -2 ./ss_01_qc/out_29aSS_S104_R2_001.fastq| \
samtools view -bS -@ 10| \
samtools sort -@ 10 -o ./ss_03_coverage_coassembly/29aSS/29aSS.sorted.bam

samtools index ./ss_03_coverage_coassembly/29aSS/29aSS.sorted.bam

samtools flagstat -@ 10 -O tsv ./ss_03_coverage_coassembly/29aSS/29aSS.sorted.bam > ./ss_03_coverage_coassembly/29aSS/29aSS.flagstat.tsv



# this is the 3rd SS sample

bowtie2 -p 10 -x ./ss_03_coverage_coassembly/coassembly --very-sensitive-local -1 ./ss_01_qc/out_41aSS_S105_R1_001.fastq -2 ./ss_01_qc/out_41aSS_S105_R2_001.fastq| \
samtools view -bS -@ 10| \
samtools sort -@ 10 -o ./ss_03_coverage_coassembly/41aSS/41aSS.sorted.bam

samtools index ./ss_03_coverage_coassembly/41aSS/41aSS.sorted.bam

samtools flagstat -@ 10 -O tsv ./ss_03_coverage_coassembly/41aSS/41aSS.sorted.bam > ./ss_03_coverage_coassembly/41aSS/41aSS.flagstat.tsv