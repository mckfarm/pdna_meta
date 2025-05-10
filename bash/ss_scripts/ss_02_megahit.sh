#!/bin/bash

#SBATCH --job-name="ss_02_megahit"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=150Gb
#SBATCH -t 24:00:00
#SBATCH --output=ss_02_megahit.out
#SBATCH --error=ss_02_megahit.err
#SBATCH -p genomics

module purge all

module load mamba

source activate /projects/b1052/Zhen/resources/megahit

cd /projects/b1052/Zhen/pdna_meta


megahit -1 ./ss_01_qc/out_15aSS_S103_R1_001.fastq.gz \
-2 ./ss_01_qc/out_15aSS_S103_R2_001.fastq.gz \
-o ./ss_02_megahit/15aSS \
-t 12 --k-min 31 --continue -m 150000000000

megahit -1 ./ss_01_qc/out_29aSS_S104_R1_001.fastq.gz \
-2 ./ss_01_qc/out_29aSS_S104_R2_001.fastq.gz \
-o ./ss_02_megahit/29aSS \
-t 12 --k-min 31 --continue -m 150000000000

megahit -1 ./ss_01_qc/out_41aSS_S105_R1_001.fastq.gz \
-2 ./ss_01_qc/out_41aSS_S105_R2_001.fastq.gz \
-o ./ss_02_megahit/41aSS \
-t 12 --k-min 31 --continue -m 150000000000