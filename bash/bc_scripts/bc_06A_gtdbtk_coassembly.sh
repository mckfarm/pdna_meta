#!/bin/bash

#SBATCH --job-name="bc_06A_gtdbtk_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=200Gb
#SBATCH -t 12:00:00
#SBATCH --output=bc_06A_gtdbtk_coassembly.out
#SBATCH --error=bc_06A_gtdbtk_coassembly.err
#SBATCH -p genomics

module purge all

module load mamba

#new version of the gtdbtk to include the mash function

source activate /projects/b1052/mckenna/envs/snakemake/d39f2fb0edc3c4a0ed97fbac6f0bde01_


cd /projects/b1052/Zhen/pdna_meta/

gtdbtk classify_wf --cpus 12 --pplacer_cpus 12 \
--genome_dir ./bc_04_metabat_coassembly/3aBC --mash_db ./bc_06A_gtdbtk_coassembly/3aBC/mash_db --extension fa \
--out_dir ./bc_06A_gtdbtk_coassembly/3aBC


gtdbtk classify_wf --cpus 12 --pplacer_cpus 12 \
--genome_dir ./bc_04_metabat_coassembly/9aBC --mash_db ./bc_06A_gtdbtk_coassembly/9aBC/mash_db --extension fa \
--out_dir ./bc_06A_gtdbtk_coassembly/9aBC