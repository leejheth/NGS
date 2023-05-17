#!/usr/bin/env bash

BASE_DIR=$(pwd)

cd $BASE_DIR/RNAseq/data/reference

hisat2-build Mus_musculus_GRCm38_dna_chromosome_5.fa Mus_musculus_GRCm38_dna_chromosome_5.fa
