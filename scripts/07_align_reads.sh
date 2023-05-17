#!/usr/bin/env bash

BASE_DIR=$(pwd)
TRIMMED_DIR=$BASE_DIR/results/trimmed
REFERENCE_DIR=$BASE_DIR/ref_genome/
ALIGNED_DIR=$BASE_DIR/results/alignments

mkdir -p $ALIGNED_DIR

bowtie2 \
-x $REFERENCE_DIR/ecoli-strK12-MG1655.fasta \
-1 $TRIMMED_DIR/trimmed_SRR519926_1.fastq \
-2 $TRIMMED_DIR/trimmed_SRR519926_2.fastq \
> $ALIGNED_DIR/SRR519926.sam

cd $BASE_DIR/results/alignments/
samtools flagstat SRR519926.sam > SRR519926.sam.stats
samtools stats SRR519926.sam | grep ^SN | cut -f 2,3
