#! /bin/bash
#SBATCH -A p31629
#SBATCH -p normal
#SBATCH --job-name="contig_rpkm"
#SBATCH -t 05:00:00
#SBATCH -N 1
#SBATCH -n 6
#SBATCH --mem=50Gb
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mckennafarmer2023@u.northwestern.edu
#SBATCH --output="contig_rpkm.out"
#SBATCH --error="contig_rpkm.err"

module load bowtie2/2.4.5
module load samtools/1.10.1
module load sambamba/0.8.2
module load java/jdk1.8.0_25

/home/mmf8608/programs/bbmap_39.01/pileup.sh -Xmx50g threads=6 \
in=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/3aBC/mapped.sam \
ref=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/3aBC/final.contigs.fa \
out=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/3aBC/mapped.pileup.txt \
rpkm=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/3aBC/mapped.rpkm.txt \
basecov=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/3aBC/mapped.basecov.txt

/home/mmf8608/programs/bbmap_39.01/bbmap.sh -Xmx50g threads=6 \
in=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/9aBC/mapped.sam \
ref=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/9aBC/final.contigs.fa \
out=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/9aBC/mapped.pileup.txt \
rpkm=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/9aBC/mapped.rpkm.txt \
basecov=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/9aBC/mapped.basecov.txt

/home/mmf8608/programs/bbmap_39.01/bbmap.sh -Xmx50g threads=6 \
in=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/15aSS/mapped.sam \
ref=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/15aSS/final.contigs.fa \
out=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/15aSS/mapped.pileup.txt \
rpkm=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/15aSS/mapped.rpkm.txt \
basecov=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/15aSS/mapped.basecov.txt

/home/mmf8608/programs/bbmap_39.01/bbmap.sh -Xmx50g threads=6 \
in=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/29aSS/mapped.sam \
ref=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/29aSS/final.contigs.fa \
out=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/29aSS/mapped.pileup.txt \
rpkm=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/29aSS/mapped.rpkm.txt \
basecov=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/29aSS/mapped.basecov.txt

/home/mmf8608/programs/bbmap_39.01/bbmap.sh -Xmx50g threads=6 \
in=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/41aSS/mapped.sam \
ref=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/41aSS/final.contigs.fa \
out=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/41aSS/mapped.pileup.txt \
rpkm=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/41aSS/mapped.rpkm.txt \
basecov=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/41aSS/mapped.basecov.txt
