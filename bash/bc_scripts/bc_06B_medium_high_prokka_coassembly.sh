#!/bin/bash

#SBATCH --job-name="bc_06B_medium_high_prokka_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=200Gb
#SBATCH -t 12:00:00
#SBATCH --output=bc_06B_medium_high_prokka_coassembly.out
#SBATCH --error=bc_06B_medium_high_prokka_coassembly.err
#SBATCH -p genomics

module purge all

module load mamba

source activate /projects/b1052/pythonenvs/python3.6/prokka


cd /projects/b1052/Zhen/pdna_meta/bc_05_metabat_checkm_coassembly/3aBC/quality_sorted_bins/medium_high_50_10/
for F in *.fa; do
  N=$(basename $F .fa) ;
  prokka $F --outdir $N --prefix $N --metagenome --cpus 12;
done

# the output files will be stored under the same folder of the bins, and then you need to manually move all outputs for this step to the prokka folder



cd /projects/b1052/Zhen/pdna_meta/bc_05_metabat_checkm_coassembly/9aBC/quality_sorted_bins/medium_high_50_10/
for F in *.fa; do
  N=$(basename $F .fa) ;
  prokka $F --outdir $N --prefix $N --metagenome --cpus 12;
done

# the output files will be stored under the same folder of the bins, and then you need to manually move all outputs for this step to the prokka folder

