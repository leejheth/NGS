#!/usr/bin/env bash

BASE_DIR=$(pwd)

cd $BASE_DIR/RNAseq/data/fastq

fastqc *.fastq.gz