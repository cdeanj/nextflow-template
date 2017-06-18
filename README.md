[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/cdeanj/nextflow-template/blob/master/LICENSE)
[![CircleCI](https://circleci.com/gh/cdeanj/nextflow-template/tree/master.svg?style=shield)](https://circleci.com/gh/cdeanj/nextflow-template/tree/master)

Nextflow Starter Template
=========================
This is a simple starter template for creating [Nextflow](https://www.nextflow.io) projects with [Docker](https://docs.docker.com/engine/installation/). By default, this program indexes a reference genome and aligns reads to a reference with [BWA](https://github.com/lh3/bwa). Feel free to fill in the blanks where needed, copy, or modify this template to suit your needs.

Prerequisites
-------------
  - Nextflow
  - Java 1.7+
  - Docker

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

Pull Docker Image
------------------
```
$ docker pull cdeanj/bwa
```

Usage
-----
```
$ nextflow run . -profile template --threads 4 --output output
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
