#!/usr/bin/env bash

BASE_DIR=$(pwd)

cd $BASE_DIR/reads
fastqc *.fastq