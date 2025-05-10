#!/bin/bash

#SBATCH --job-name="bc_01_fastp"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem=40G
#SBATCH -t 24:00:00
#SBATCH --output=bc_01_fastp.out
#SBATCH --error=bc_01_fastp.err
#SBATCH -p genomicsguest

module purge all

module load fastp

cd /projects/b1052/Zhen/pdna_meta


fastp -i ./raw_data/bc/3aBC_S106_R1_001.fastq.gz \
-I ./raw_data/bc/3aBC_S106_R2_001.fastq.gz \
-o ./bc_01_qc/out_3aBC_S106_R1_001.fastq.gz \
-O ./bc_01_qc/out_3aBC_S106_R2_001.fastq.gz \
--detect_adapter_for_pe --dedup --length_required 50 \
-h ./bc_01_qc/pdna_3aBC.html \
-j ./bc_01_qc/pdna_3aBC.json

fastp -i ./raw_data/bc/9aBC_S107_R1_001.fastq.gz \
-I ./raw_data/bc/9aBC_S107_R2_001.fastq.gz \
-o ./bc_01_qc/out_9aBC_S107_R1_001.fastq.gz \
-O ./bc_01_qc/out_9aBC_S107_R2_001.fastq.gz \
--detect_adapter_for_pe --dedup --length_required 50 \
-h ./bc_01_qc/pdna_9aBC.html \
-j ./bc_01_qc/pdna_9aBC.json