#!/usr/bin/env bash

REFERENCE_DIR=~/workdir/group4/jihyun/data/reference
ALIGNED_DIR=~/workdir/group4/jihyun/results/alignments

featureCounts \
-p \
-T 2 \
-g Name \
-a $REFERENCE_DIR/Mus_musculus_GRCm38_dna_chromosome_5.gtf \
-o $REFERENCE_DIR/feature_counts.txt \
$ALIGNED_DIR/Case1.sorted.bam \
$ALIGNED_DIR/Case2.sorted.bam \
$ALIGNED_DIR/Case3.sorted.bam \
$ALIGNED_DIR/Control1.sorted.bam \
$ALIGNED_DIR/Control2.sorted.bam \
$ALIGNED_DIR/Control3.sorted.bam \
2> $REFERENCE_DIR/feature_counts.log
