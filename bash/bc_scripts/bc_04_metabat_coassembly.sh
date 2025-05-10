#!/bin/bash

#SBATCH --job-name="bc_04_metabat_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=150Gb
#SBATCH -t 12:00:00
#SBATCH --output=bc_04_metabat_coassembly.out
#SBATCH --error=bc_04_metabat_coassembly.err
#SBATCH -p genomics

module load mamba
source activate /projects/b1052/mckenna/envs/metabat2

cd /projects/b1052/Zhen/pdna_meta/


#1st BC sample

jgi_summarize_bam_contig_depths \
--referenceFasta ./bc_02_megahit_coassembly/final.contigs.fa ./bc_03_coverage_coassembly/3aBC/3aBC.sorted.bam \
--outputDepth ./bc_04_metabat_coassembly/3aBC/3aBC.depth.txt

metabat2 -t 12 \
--inFile ./bc_02_megahit_coassembly/final.contigs.fa --outFile ./bc_04_metabat_coassembly/3aBC/3aBC --abdFile ./bc_04_metabat_coassembly/3aBC/3aBC.depth.txt \
--unbinned --verbose



#2nd BC sample

jgi_summarize_bam_contig_depths \
--referenceFasta ./bc_02_megahit_coassembly/final.contigs.fa ./bc_03_coverage_coassembly/9aBC/9aBC.sorted.bam \
--outputDepth ./bc_04_metabat_coassembly/9aBC/9aBC.depth.txt

metabat2 -t 12 \
--inFile ./bc_02_megahit_coassembly/final.contigs.fa --outFile ./bc_04_metabat_coassembly/9aBC/9aBC --abdFile ./bc_04_metabat_coassembly/9aBC/9aBC.depth.txt \
--unbinned --verbose