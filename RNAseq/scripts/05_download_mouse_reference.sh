#!/usr/bin/env bash

BASE_DIR=$(pwd)

REFERENCE_DIR=$BASE_DIR/RNAseq/data/ref_genome/

mkdir $REFERENCE_DIR
cd $REFERENCE_DIR

esearch -db nuccore -query 'CM000998' \
| efetch -format fasta > mouse_ch5.fasta
