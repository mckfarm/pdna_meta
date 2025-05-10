#!/bin/bash

#SBATCH --job-name="bc_02_megahit_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=150Gb
#SBATCH -t 24:00:00
#SBATCH --output=bc_02_megahit_coassembly.out
#SBATCH --error=bc_02_megahit_coassembly.err
#SBATCH -p genomics

module purge all

module load mamba

source activate /projects/b1052/Zhen/resources/megahit

cd /projects/b1052/Zhen/pdna_meta


megahit -1 ./bc_01_qc/out_3aBC_S106_R1_001.fastq.gz,./bc_01_qc/out_9aBC_S107_R1_001.fastq.gz \
-2 ./bc_01_qc/out_3aBC_S106_R2_001.fastq.gz,./bc_01_qc/out_9aBC_S107_R2_001.fastq.gz \
-o ./bc_02_megahit_coassembly \
-t 12 --k-min 31 --continue -m 150000000000