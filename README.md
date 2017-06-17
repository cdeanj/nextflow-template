[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/cdeanj/nextflow-template/blob/master/LICENSE)

Nextflow Starter Template
=========================
This is a simple starter template for creating [Nextflow](https://www.nextflow.io) projects. By default, this program indexes a reference genome and aligns reads to a reference with [BWA](https://github.com/lh3/bwa). Feel free to fill in the blanks where needed, copy, or modify this template to suit your needs.

Prerequisites
-------------
  - Nextflow
  - Java 1.7+
  - [Docker](https://docs.docker.com/engine/installation/)

Quickstart
==========
Install Nextflow
----------------
```
$ curl -fsSL get.nextflow.io | bash
$ ./nextflow
$ mv nextflow /usr/local/bin
```

Clone Github Repository
-----------------------
```
$ git clone https://github.com/cdeanj/nextflow-template.git
$ cd nextflow-template
```

Build Docker Image
------------------
```
$ cd dockerfile
$ docker build -t cdeanj/bwa .
```

Usage
-----
```
$ nextflow run main.nf -profile template --threads 8 --output output_dir
```

Pipeline Options
----------------
Option | Description
--------- | -----------
help | `Display help message.`
read_pairs| `Path to directory of FASTQ files.`
genome | `Path to FASTA formatted reference genome.`
threads | `Number of threads to use for each process.`
output | `Directory to write output files to.`

Contact
=======
Feel free to send me an email at cdean11 AT rams DOT colostate DOT edu
