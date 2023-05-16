#!/usr/bin/env bash

REFERENCE_DIR=~/workdir/group4/jihyun/data/ref_genome/

mkdir $REFERENCE_DIR
cd $REFERENCE_DIR

esearch -db nuccore -query 'CM000998' \
| efetch -format fasta > mouse_ch5.fasta
