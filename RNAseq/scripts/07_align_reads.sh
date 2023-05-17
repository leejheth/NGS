#!/usr/bin/env bash

BASE_DIR=$(pwd)

TRIMMED_DIR=$BASE_DIR/RNAseq/results/trimmed
REFERENCE_DIR=$BASE_DIR/RNAseq/data/reference
ALIGNED_DIR=$BASE_DIR/RNAseq/results/alignments

mkdir -p $ALIGNED_DIR

for condition in Case Control
do
    for IND in 1 2 3
    do
        hisat2 \
        -x $REFERENCE_DIR/Mus_musculus_GRCm38_dna_chromosome_5.fa \
        -1 $TRIMMED_DIR/trimmed_${condition}${IND}_R1.fastq \
        -2 $TRIMMED_DIR/trimmed_${condition}${IND}_R2.fastq \
        --threads 4 \
        2> $ALIGNED_DIR/${condition}${IND}.log \
        | tee $ALIGNED_DIR/${condition}${IND}.sam \
        | samtools flagstat - \
        > $ALIGNED_DIR/${condition}${IND}.sam.stats 

        samtools sort $ALIGNED_DIR/${condition}${IND}.sam \
        | samtools view -bh - \
        | tee $ALIGNED_DIR/${condition}${IND}.sorted.bam \
        | samtools index -o $ALIGNED_DIR/${condition}${IND}.sorted.bam.bai -
    done
done

