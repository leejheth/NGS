#!/usr/bin/env bash

cd ~/workdir/results/alignments

samtools view -bh SRR519926.sam > SRR519926.bam
samtools sort SRR519926.bam > SRR519926.sorted.bam
samtools index SRR519926.sorted.bam

samtools view -H SRR519926.bam
samtools view -H SRR519926.sorted.bam