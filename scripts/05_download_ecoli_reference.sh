#!/usr/bin/env bash

BASE_DIR=$(pwd)
REFERENCE_DIR=$BASE_DIR/ref_genome/

mkdir $REFERENCE_DIR
cd $REFERENCE_DIR

esearch -db nuccore -query 'U00096' \
| efetch -format fasta > ecoli-strK12-MG1655.fasta
