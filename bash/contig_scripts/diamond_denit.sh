#! /bin/bash
#SBATCH -A p31629
#SBATCH -p short
#SBATCH --job-name="diamond"
#SBATCH -t 01:00:00
#SBATCH -N 1
#SBATCH -n 6
#SBATCH --mem=20Gb
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mckennafarmer2023@u.northwestern.edu
#SBATCH --output="diamond.out"
#SBATCH --error="diamond.err"

module load mamba
source activate /projects/b1052/mckenna/envs/diamond

diamond blastp --db /projects/b1052/mckenna/resources/diamond/denit_uniprotkb.dmnd \
--fast --iterate --max-target-seqs 1 \
--query /projects/b1052/Zhen/pdna_meta/contig_analysis/3aBC/cds_proteins.faa \
--out /projects/b1052/Zhen/pdna_meta/contig_analysis/3aBC/dmnd_denit.txt \
--threads 6

diamond blastp --db /projects/b1052/mckenna/resources/diamond/denit_uniprotkb.dmnd \
--fast --iterate --max-target-seqs 1 \
--query /projects/b1052/Zhen/pdna_meta/contig_analysis/9aBC/cds_proteins.faa \
--out /projects/b1052/Zhen/pdna_meta/contig_analysis/9aBC/dmnd_denit.txt \
--threads 6

diamond blastp --db /projects/b1052/mckenna/resources/diamond/denit_uniprotkb.dmnd \
--fast --iterate --max-target-seqs 1 \
--query /projects/b1052/Zhen/pdna_meta/contig_analysis/15aSS/cds_proteins.faa \
--out /projects/b1052/Zhen/pdna_meta/contig_analysis/15aSS/dmnd_denit.txt \
--threads 6

diamond blastp --db /projects/b1052/mckenna/resources/diamond/denit_uniprotkb.dmnd \
--fast --iterate --max-target-seqs 1 \
--query /projects/b1052/Zhen/pdna_meta/contig_analysis/29aSS/cds_proteins.faa \
--out /projects/b1052/Zhen/pdna_meta/contig_analysis/29aSS/dmnd_denit.txt \
--threads 6

diamond blastp --db /projects/b1052/mckenna/resources/diamond/denit_uniprotkb.dmnd \
--fast --iterate --max-target-seqs 1 \
--query /projects/b1052/Zhen/pdna_meta/contig_analysis/41aSS/cds_proteins.faa \
--out /projects/b1052/Zhen/pdna_meta/contig_analysis/41aSS/dmnd_denit.txt \
--threads 6