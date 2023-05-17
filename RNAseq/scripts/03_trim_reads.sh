#!/usr/bin/env bash

BASE_DIR=$(pwd)

TRIMMED_DIR=$BASE_DIR/RNAseq/results/trimmed
READS_DIR=$BASE_DIR/RNAseq/data/fastq

mkdir -p $TRIMMED_DIR
cd $TRIMMED_DIR

for condition in Case Control
do
    for IND in {1,2,3}
    do
        fastp \
        -i ${READS_DIR}/${condition}${IND}_R1.fastq.gz \
        -I ${READS_DIR}/${condition}${IND}_R2.fastq.gz \
        -o trimmed_${condition}${IND}_R1.fastq \
        -O trimmed_${condition}${IND}_R2.fastq \
        --html trimmed_${condition}${IND}.html \
        --json trimmed_${condition}${IND}.json \
        --qualified_quality_phred 28 \
        --cut_front \
        --cut_tail
    done
done




