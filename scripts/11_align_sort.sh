#!/usr/bin/env bash

BASE_DIR=$(pwd)

TRIMMED_DIR=$BASE_DIR/results/trimmed
REFERENCE_DIR=$BASE_DIR/ref_genome
ALIGNED_DIR=$BASE_DIR/results/alignments

bowtie2 \
-x $REFERENCE_DIR/ecoli-strK12-MG1655.fasta \
-1 $TRIMMED_DIR/trimmed_SRR519926_1.fastq \
-2 $TRIMMED_DIR/trimmed_SRR519926_2.fastq \
2> $ALIGNED_DIR/bowtie2_SRR519926.log \
| samtools sort - \
| samtools view -bh - \
> $ALIGNED_DIR/SRR519926.sorted.frompipe.bam
