Nextflow Starter Template
======================
This is a simple starter template for creating [Nextflow](https://www.nextflow.io) projects. By default, this program indexes a reference genome and aligns reads to a reference with [BWA](https://github.com/lh3/bwa). Feel free to fill in the blanks where needed, copy, or modify this template to suit your needs.

Prerequisites
------------------
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
----------------
```
$ https://github.com/cdeanj/nextflow-template.git
$ cd nextflow-template
```

Download Docker Image
------------
```
$ docker pull chrisd/nextflow-template
```

Run Pipeline
------------
```
$ nextflow run main.nf -profile template --threads 8 --output output_dir
```

Contact
=======
Feel free to send me an email at cdean11 AT rams DOT colostate DOT edu
