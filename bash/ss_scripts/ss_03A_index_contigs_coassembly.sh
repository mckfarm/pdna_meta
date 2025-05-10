#!/bin/bash

#SBATCH --job-name="ss_03_index_contigs_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=150Gb
#SBATCH -t 12:00:00
#SBATCH --output=ss_03_index_contigs_coassembly.out
#SBATCH --error=ss_03_index_contigs_coassembly.err
#SBATCH -p genomics


cd /projects/b1052/Zhen/pdna_meta/


module load bowtie2/2.4.5


#do the command in a script rather than in a direct command as it requires a lot of time and memory

bowtie2-build ./ss_02_megahit_coassembly/final.contigs.fa ./ss_03_coverage_coassembly/coassembly