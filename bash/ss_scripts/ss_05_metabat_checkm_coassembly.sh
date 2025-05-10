#!/bin/bash

#SBATCH --job-name="ss_05_metabat_checkm_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=50Gb
#SBATCH -t 05:00:00
#SBATCH --output=ss_05_metabat_checkm_coassembly.out
#SBATCH --error=ss_05_metabat_checkm_coassembly.err
#SBATCH -p genomics

module purge all

module load mamba

source activate /projects/b1052/Zhen/resources/checkm

cd /projects/b1052/Zhen/pdna_meta/


checkm lineage_wf \
--threads 12 \
--extension 'fa' \
--file ./ss_05_metabat_checkm_coassembly/15aSS/15aSS_checkm_output.txt --tab_table \
./ss_04_metabat_coassembly/15aSS ./ss_05_metabat_checkm_coassembly/15aSS


checkm lineage_wf \
--threads 12 \
--extension 'fa' \
--file ./ss_05_metabat_checkm_coassembly/29aSS/29aSS_checkm_output.txt --tab_table \
./ss_04_metabat_coassembly/29aSS ./ss_05_metabat_checkm_coassembly/29aSS



checkm lineage_wf \
--threads 12 \
--extension 'fa' \
--file ./ss_05_metabat_checkm_coassembly/41aSS/41aSS_checkm_output.txt --tab_table \
./ss_04_metabat_coassembly/41aSS ./ss_05_metabat_checkm_coassembly/41aSS