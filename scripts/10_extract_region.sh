#!/usr/bin/env bash

BASE_DIR=$(pwd)

cd $BASE_DIR/results/alignments

samtools view -bh \
SRR519926.sorted.bam \
U00096.3:2000000-2500000 \
> SRR519926.sorted.region.bam

samtools index SRR519926.sorted.region.bam