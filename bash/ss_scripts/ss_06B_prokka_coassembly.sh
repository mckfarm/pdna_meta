#!/bin/bash

#SBATCH --job-name="ss_06B_prokka_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=200Gb
#SBATCH -t 24:00:00
#SBATCH --output=ss_06B_prokka_coassembly.out
#SBATCH --error=ss_06B_prokka_coassembly.err
#SBATCH -p genomics

module purge all

module load mamba

source activate /projects/b1052/pythonenvs/python3.6/prokka


cd /projects/b1052/Zhen/pdna_meta/ss_04_metabat_coassembly/15aSS/
for F in *.fa; do
  N=$(basename $F .fa) ;
  prokka $F --outdir $N --prefix $N --metagenome --cpus 12;
done

# the output files will be stored under the same folder of the bins, and then you need to manually move all outputs for this step to the prokka folder



cd /projects/b1052/Zhen/pdna_meta/ss_04_metabat_coassembly/29aSS/
for F in *.fa; do
  N=$(basename $F .fa) ;
  prokka $F --outdir $N --prefix $N --metagenome --cpus 12;
done

# the output files will be stored under the same folder of the bins, and then you need to manually move all outputs for this step to the prokka folder



cd /projects/b1052/Zhen/pdna_meta/ss_04_metabat_coassembly/41aSS/
for F in *.fa; do
  N=$(basename $F .fa) ;
  prokka $F --outdir $N --prefix $N --metagenome --cpus 12;
done

# the output files will be stored under the same folder of the bins, and then you need to manually move all outputs for this step to the prokka folder
