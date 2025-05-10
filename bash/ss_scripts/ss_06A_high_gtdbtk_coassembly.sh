#!/bin/bash

#SBATCH --job-name="sss_06A_high_gtdbtk_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=200Gb
#SBATCH -t 12:00:00
#SBATCH --output=ss_06A_high_gtdbtk_coassembly.out
#SBATCH --error=ss_06A_high_gtdbtk_coassembly.err
#SBATCH -p genomics

module purge all

module load mamba

#new version of the gtdbtk to include the mash function

source activate /projects/b1052/mckenna/envs/snakemake/d39f2fb0edc3c4a0ed97fbac6f0bde01_


cd /projects/b1052/Zhen/pdna_meta/

gtdbtk classify_wf --cpus 12 --pplacer_cpus 12 \
--genome_dir ./ss_05_metabat_checkm_coassembly/15aSS/quality_sorted_bins/high_90_5 --mash_db ./ss_06A_gtdbtk_coassembly/15aSS/high_quality_90_5/mash_db --extension fa \
--out_dir ./ss_06A_gtdbtk_coassembly/15aSS/high_quality_90_5


gtdbtk classify_wf --cpus 12 --pplacer_cpus 12 \
--genome_dir ./ss_05_metabat_checkm_coassembly/29aSS/quality_sorted_bins/high_90_5 --mash_db ./ss_06A_gtdbtk_coassembly/29aSS/high_quality_90_5/mash_db --extension fa \
--out_dir ./ss_06A_gtdbtk_coassembly/29aSS/high_quality_90_5


gtdbtk classify_wf --cpus 12 --pplacer_cpus 12 \
--genome_dir ./ss_05_metabat_checkm_coassembly/41aSS/quality_sorted_bins/high_90_5 --mash_db ./ss_06A_gtdbtk_coassembly/41aSS/high_quality_90_5/mash_db --extension fa \
--out_dir ./ss_06A_gtdbtk_coassembly/41aSS/high_quality_90_5