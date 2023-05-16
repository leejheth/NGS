#!/usr/bin/env bash

TRIMMED_DIR=~/workdir/group4/jihyun/results/trimmed
REFERENCE_DIR=~/workdir/group4/jihyun/data/ref_genome
ALIGNED_DIR=~/workdir/group4/jihyun/results/alignments

mkdir -p $ALIGNED_DIR

for condition in Case Control
do
    for IND in 1 2 3
    do
        hisat2 \
        -x $REFERENCE_DIR/mouse_ch5.fasta \
        -1 $TRIMMED_DIR/trimmed_${condition}${IND}_R1.fastq \
        -2 $TRIMMED_DIR/trimmed_${condition}${IND}_R2.fastq \
        --threads 3 \
        2> $ALIGNED_DIR/${condition}${IND}.log \
        | tee $ALIGNED_DIR/${condition}${IND}.sam \
        | samtools flagstat - \
        > $ALIGNED_DIR/${condition}${IND}.sam.stats 

        samtools sort $ALIGNED_DIR/${condition}${IND}.sam \
        | samtools view -bh - \
        > $ALIGNED_DIR/${condition}${IND}.sorted.bam
    done
done

