#!/bin/bash

#SBATCH --job-name="ss_01_fastp"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem=40G
#SBATCH -t 24:00:00
#SBATCH --output=ss_01_fastp.out
#SBATCH --error=ss_01_fastp.err
#SBATCH -p genomicsguest

module purge all

module load fastp

cd /projects/b1052/Zhen/pdna_meta

fastp -i ./raw_data/ss/15aSS_S103_R1_001.fastq.gz \
-I ./raw_data/ss/15aSS_S103_R2_001.fastq.gz \
-o ./ss_01_qc/out_15aSS_S103_R1_001.fastq.gz \
-O ./ss_01_qc/out_15aSS_S103_R2_001.fastq.gz \
--detect_adapter_for_pe --dedup --length_required 50 \
-h ./ss_01_qc/pdna_15aSS.html \
-j ./ss_01_qc/pdna_15aSS.json

fastp -i ./raw_data/ss/29aSS_S104_R1_001.fastq.gz \
-I ./raw_data/ss/29aSS_S104_R2_001.fastq.gz \
-o ./ss_01_qc/out_29aSS_S104_R1_001.fastq.gz \
-O ./ss_01_qc/out_29aSS_S104_R2_001.fastq.gz \
--detect_adapter_for_pe --dedup --length_required 50 \
-h ./ss_01_qc/pdna_29aSS.html \
-j ./ss_01_qc/pdna_29aSS.json

fastp -i ./raw_data/ss/41aSS_S105_R1_001.fastq.gz \
-I ./raw_data/ss/41aSS_S105_R2_001.fastq.gz \
-o ./ss_01_qc/out_41aSS_S105_R1_001.fastq.gz \
-O ./ss_01_qc/out_41aSS_S105_R2_001.fastq.gz \
--detect_adapter_for_pe --dedup --length_required 50 \
-h ./ss_01_qc/pdna_41aSS.html \
-j ./ss_01_qc/pdna_41aSS.json