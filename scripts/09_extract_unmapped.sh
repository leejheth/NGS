#!/usr/bin/env bash

BASE_DIR=$(pwd)

cd $BASE_DIR/results/alignments

samtools view -bh -f 0x4 SRR519926.sorted.bam > SRR519926.sorted.unmapped.bam
samtools view -c SRR519926.sorted.unmapped.bam
