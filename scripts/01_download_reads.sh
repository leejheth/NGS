#!/usr/bin/env bash

cd ~/workdir
mkdir reads
cd reads
prefetch SRR519926
fastq-dump --split-files SRR519926 # split files to forward and reverse

## count forward read
echo $(cat SRR519926_1.fastq | wc -l)/4 | bc  

## count reverse read
echo $(cat SRR519926_2.fastq | wc -l)/4 | bc
