# NGS
A project as part of Swiss Institute of Bioinformatics course "NGS data quality control, alignment, visualization"

RNA-seq data analysis project.

## Installation
Prerequisite: [conda](https://docs.conda.io/projects/conda/en/stable/user-guide/install/index.html)

Linux
```
conda env create -f environment.yml
conda activate ngs-tools
```

MacOS
```
conda create -n ngs-tools python=3.8
conda activate ngs-tools
conda install -y -c bioconda samtools bwa fastqc fastp sra-tools cutadapt bowtie2 hisat2 subread entrez-direct minimap2
```

## Reference 
- https://github.com/sib-swiss/NGS-introduction-training

- Singhania A, Graham CM, Gabryšová L, Moreira-Teixeira L, Stavropoulos E, Pitt JM, et al (2019). Transcriptional profiling unveils type I and II interferon networks in blood and tissues across diseases. Nat Commun. 10:1–21. https://doi.org/10.1038/s41467-019-10601-6
