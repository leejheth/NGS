#!/usr/bin/env bash

BASE_DIR=$(pwd)

mkdir $BASE_DIR/reads
cd $BASE_DIR/reads
prefetch SRR519926
fastq-dump --split-files SRR519926 # split files to forward and reverse

## count forward read
echo $(cat SRR519926_1.fastq | wc -l)/4 | bc  

## count reverse read
echo $(cat SRR519926_2.fastq | wc -l)/4 | bc
