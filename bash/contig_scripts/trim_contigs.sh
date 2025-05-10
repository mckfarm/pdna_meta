#! /bin/bash
#SBATCH -A p31629
#SBATCH -p short
#SBATCH --job-name="contig_trim"
#SBATCH -t 01:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem=5Gb
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mckennafarmer2023@u.northwestern.edu
#SBATCH --output="contig_trim.out"
#SBATCH --error="contig_trim.err"

module load java/jdk1.8.0_25

/home/mmf8608/programs/bbmap_39.01/reformat.sh -Xmx5g \
in=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/3aBC/final.contigs.fa \
out=/projects/b1052/Zhen/pdna_meta/contig_analysis/3aBC/final.contigs.trim.fa \
minlength=500

/home/mmf8608/programs/bbmap_39.01/reformat.sh -Xmx5g \
in=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/9aBC/final.contigs.fa \
out=/projects/b1052/Zhen/pdna_meta/contig_analysis/9aBC/final.contigs.trim.fa \
minlength=500

/home/mmf8608/programs/bbmap_39.01/reformat.sh -Xmx5g \
in=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/15aSS/final.contigs.fa \
out=/projects/b1052/Zhen/pdna_meta/contig_analysis/315aSS/final.contigs.trim.fa \
minlength=500

/home/mmf8608/programs/bbmap_39.01/reformat.sh -Xmx5g \
in=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/29aSS/final.contigs.fa \
out=/projects/b1052/Zhen/pdna_meta/contig_analysis/29aSS/final.contigs.trim.fa \
minlength=500

/home/mmf8608/programs/bbmap_39.01/reformat.sh -Xmx5g \
in=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/41aSS/final.contigs.fa \
out=/projects/b1052/Zhen/pdna_meta/contig_analysis/41aSS/final.contigs.trim.fa \
minlength=500