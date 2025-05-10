#! /bin/bash
#SBATCH -A p31629
#SBATCH -p normal
#SBATCH --job-name="pyrodigal"
#SBATCH -t 24:00:00
#SBATCH -N 1
#SBATCH -n 4
#SBATCH --mem=10Gb
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mckennafarmer2023@u.northwestern.edu
#SBATCH --output="pyrodigal.out"
#SBATCH --error="pyrodigal.err"

module load mamba
source activate /projects/b1052/mckenna/envs/pyrodigal

# pyrodigal -i /projects/b1052/Zhen/pdna_meta/contig_analysis/3aBC/final.contigs.trim.fa \
# -a /projects/b1052/Zhen/pdna_meta/contig_analysis/3aBC/cds_proteins.faa \
# -d /projects/b1052/Zhen/pdna_meta/contig_analysis/3aBC/cds_nucl.faa \
# -o /projects/b1052/Zhen/pdna_meta/contig_analysis/3aBC/cds.gff \
# -f gff -p meta --jobs 4

pyrodigal -i /projects/b1052/Zhen/pdna_meta/contig_analysis/9aBC/final.contigs.trim.fa \
-a /projects/b1052/Zhen/pdna_meta/contig_analysis/9aBC/cds_proteins.faa \
-d /projects/b1052/Zhen/pdna_meta/contig_analysis/9aBC/cds_nucl.faa \
-o /projects/b1052/Zhen/pdna_meta/contig_analysis/9aBC/cds.gff \
-f gff -p meta --jobs 4

pyrodigal -i /projects/b1052/Zhen/pdna_meta/contig_analysis/29aSS/final.contigs.trim.fa \
-a /projects/b1052/Zhen/pdna_meta/contig_analysis/29aSS/cds_proteins.faa \
-d /projects/b1052/Zhen/pdna_meta/contig_analysis/29aSS/cds_nucl.faa \
-o /projects/b1052/Zhen/pdna_meta/contig_analysis/29aSS/cds.gff \
-f gff -p meta --jobs 4

pyrodigal -i /projects/b1052/Zhen/pdna_meta/contig_analysis/41aSS/final.contigs.trim.fa \
-a /projects/b1052/Zhen/pdna_meta/contig_analysis/41aSS/cds_proteins.faa \
-d /projects/b1052/Zhen/pdna_meta/contig_analysis/41aSS/cds_nucl.faa \
-o /projects/b1052/Zhen/pdna_meta/contig_analysis/41aSS/cds.gff \
-f gff -p meta --jobs 4

pyrodigal -i /projects/b1052/Zhen/pdna_meta/contig_analysis/315aSS/final.contigs.trim.fa \
-a /projects/b1052/Zhen/pdna_meta/contig_analysis/315aSS/cds_proteins.faa \
-d /projects/b1052/Zhen/pdna_meta/contig_analysis/315aSS/cds_nucl.faa \
-o /projects/b1052/Zhen/pdna_meta/contig_analysis/315aSS/cds.gff \
-f gff -p meta --jobs 4