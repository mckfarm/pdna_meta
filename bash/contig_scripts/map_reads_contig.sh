#! /bin/bash
#SBATCH -A p31629
#SBATCH -p normal
#SBATCH --job-name="contig_map"
#SBATCH -t 24:00:00
#SBATCH -N 1
#SBATCH -n 6
#SBATCH --mem=50Gb
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mckennafarmer2023@u.northwestern.edu
#SBATCH --output="contig_map.out"
#SBATCH --error="contig_map.err"

module load bowtie2/2.4.5
module load samtools/1.10.1
module load sambamba/0.8.2
module load java/jdk1.8.0_25

# /home/mmf8608/programs/bbmap_39.01/bbmap.sh -Xmx50g threads=6 \
# ref=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/3aBC/final.contigs.fa \
# in=/projects/b1052/Zhen/pdna_meta/bc_01_qc/out_3aBC_S106_R1_001.fastq.gz \
# in2=/projects/b1052/Zhen/pdna_meta/bc_01_qc/out_3aBC_S106_R2_001.fastq.gz \
# outm=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/3aBC/mapped.sam

/home/mmf8608/programs/bbmap_39.01/bbmap.sh -Xmx50g threads=6 \
ref=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/9aBC/final.contigs.fa \
in=/projects/b1052/Zhen/pdna_meta/bc_01_qc/out_9aBC_S107_R1_001.fastq.gz \
in2=/projects/b1052/Zhen/pdna_meta/bc_01_qc/out_9aBC_S107_R2_001.fastq.gz \
outm=/projects/b1052/Zhen/pdna_meta/bc_02_megahit/9aBC/mapped.sam

/home/mmf8608/programs/bbmap_39.01/bbmap.sh -Xmx50g threads=6 \
ref=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/15aSS/final.contigs.fa \
in=/projects/b1052/Zhen/pdna_meta/ss_01_qc/out_15aSS_S103_R1_001.fastq.gz \
in2=/projects/b1052/Zhen/pdna_meta/ss_01_qc/out_15aSS_S103_R2_001.fastq.gz \
outm=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/15aSS/mapped.sam

/home/mmf8608/programs/bbmap_39.01/bbmap.sh -Xmx50g threads=6 \
ref=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/29aSS/final.contigs.fa \
in=/projects/b1052/Zhen/pdna_meta/ss_01_qc/out_29aSS_S104_R1_001.fastq.gz \
in2=/projects/b1052/Zhen/pdna_meta/ss_01_qc/out_29aSS_S104_R2_001.fastq.gz \
outm=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/29aSS/mapped.sam

/home/mmf8608/programs/bbmap_39.01/bbmap.sh -Xmx50g threads=6 \
ref=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/41aSS/final.contigs.fa \
in=/projects/b1052/Zhen/pdna_meta/ss_01_qc/out_41aSS_S105_R1_001.fastq.gz \
in2=/projects/b1052/Zhen/pdna_meta/ss_01_qc/out_41aSS_S105_R2_001.fastq.gz \
outm=/projects/b1052/Zhen/pdna_meta/ss_02_megahit/41aSS/mapped.sam