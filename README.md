Nextflow Starter Template
======================

Prerequisites
------------------
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
----------------
```
$ https://github.com/cdeanj/nextflow-template.git
$ cd nextflow-template
```

Run Pipeline
------------
```
$ nextflow run main.nf -profile template --threads 8 --output output
```
