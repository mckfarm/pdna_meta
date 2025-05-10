#!/bin/bash

#SBATCH --job-name="ss_04_metabat_coassembly"
#SBATCH -A b1042
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhenjia2020@u.northwestern.edu
#SBATCH -N 1
#SBATCH -n 12
#SBATCH --mem=150Gb
#SBATCH -t 12:00:00
#SBATCH --output=ss_04_metabat_coassembly.out
#SBATCH --error=ss_04_metabat_coassembly.err
#SBATCH -p genomics

module load mamba
source activate /projects/b1052/mckenna/envs/metabat2

cd /projects/b1052/Zhen/pdna_meta/


#1st SS sample

jgi_summarize_bam_contig_depths \
--referenceFasta ./ss_02_megahit_coassembly/final.contigs.fa ./ss_03_coverage_coassembly/15aSS/15aSS.sorted.bam \
--outputDepth ./ss_04_metabat_coassembly/15aSS/15aSS.depth.txt

metabat2 -t 12 \
--inFile ./ss_02_megahit_coassembly/final.contigs.fa --outFile ./ss_04_metabat_coassembly/15aSS/15aSS --abdFile ./ss_04_metabat_coassembly/15aSS/15aSS.depth.txt \
--unbinned --verbose



#2nd SS sample

jgi_summarize_bam_contig_depths \
--referenceFasta ./ss_02_megahit_coassembly/final.contigs.fa ./ss_03_coverage_coassembly/29aSS/29aSS.sorted.bam \
--outputDepth ./ss_04_metabat_coassembly/29aSS/29aSS.depth.txt

metabat2 -t 12 \
--inFile ./ss_02_megahit_coassembly/final.contigs.fa --outFile ./ss_04_metabat_coassembly/29aSS/29aSS --abdFile ./ss_04_metabat_coassembly/29aSS/29aSS.depth.txt \
--unbinned --verbose



#3rd SS sample

jgi_summarize_bam_contig_depths \
--referenceFasta ./ss_02_megahit_coassembly/final.contigs.fa ./ss_03_coverage_coassembly/41aSS/41aSS.sorted.bam \
--outputDepth ./ss_04_metabat_coassembly/41aSS/41aSS.depth.txt

metabat2 -t 12 \
--inFile ./ss_02_megahit_coassembly/final.contigs.fa --outFile ./ss_04_metabat_coassembly/41aSS/41aSS --abdFile ./ss_04_metabat_coassembly/41aSS/41aSS.depth.txt \
--unbinned --verbose