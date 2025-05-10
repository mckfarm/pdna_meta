#!/bin/bash

#SBATCH --job-name="bc_05_metabat_checkm_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=50Gb
#SBATCH -t 05:00:00
#SBATCH --output=bc_05_metabat_checkm_coassembly.out
#SBATCH --error=bc_05_metabat_checkm_coassembly.err
#SBATCH -p genomics

module purge all

module load mamba

source activate /projects/b1052/Zhen/resources/checkm

cd /projects/b1052/Zhen/pdna_meta/


checkm lineage_wf \
--threads 12 \
--extension 'fa' \
--file ./bc_05_metabat_checkm_coassembly/3aBC/3aBC_checkm_output.txt --tab_table \
./bc_04_metabat_coassembly/3aBC ./bc_05_metabat_checkm_coassembly/3aBC


checkm lineage_wf \
--threads 12 \
--extension 'fa' \
--file ./bc_05_metabat_checkm_coassembly/9aBC/9aBC_checkm_output.txt --tab_table \
./bc_04_metabat_coassembly/9aBC ./bc_05_metabat_checkm_coassembly/9aBC
