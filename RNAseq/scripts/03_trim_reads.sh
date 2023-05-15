#!/usr/bin/env bash

TRIMMED_DIR=~/workdir/group4/jihyun/results/trimmed
READS_DIR=~/workdir/group4/jihyun/data/fastq

mkdir -p $TRIMMED_DIR
cd $TRIMMED_DIR

for condition in Case Control
do
    for IND in {1,2,3}
    do
        mkdir -p ${TRIMMED_DIR}/${condition}${IND}
        cd ${TRIMMED_DIR}/${condition}${IND}

        fastp \
        -i ${READS_DIR}/${condition}${IND}_R1.fastq.gz \
        -I ${READS_DIR}/${condition}${IND}_R2.fastq.gz \
        -o $TRIMMED_DIR/${condition}${IND}/trimmed_${condition}${IND}_R1.fastq \
        -O $TRIMMED_DIR/${condition}${IND}/trimmed_${condition}${IND}_R2.fastq \
        --qualified_quality_phred 10 \
        --length_required 25 \
        --unqualified_percent_limit 80 \
        --cut_front \
        --cut_tail
    done
done




