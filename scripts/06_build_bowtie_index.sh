#!/usr/bin/env bash

BASE_DIR=$(pwd)
cd $BASE_DIR/ref_genome

bowtie2-build ecoli-strK12-MG1655.fasta ecoli-strK12-MG1655.fasta
