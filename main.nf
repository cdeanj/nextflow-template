#!/usr/bin/env nextflow

params.help = ""
params.read_pairs = "$baseDir/data/raw/*_R{1,2}.fq"
params.genome = "$baseDir/data/genome/*.fa"
params.threads = 1
params.output = "./output"

genome = file(params.genome)
threads = params.threads

if(params.help) {
    log.info ''
    log.info 'Starter Template'
    log.info ''
    log.info 'Usage: '
    log.info '    nextflow run . -profile template [options]'
    log.info ''
    log.info 'Script Options: '
    log.info '    --reads_pairs		DIR	Path to FASTQ files'
    log.info '    --genome		FILE	Path to reference genome'
    log.info '    --threads		INT	Number of threads to use'
    log.info '    --output		DIR	Directory to write output files'
    log.info '    --help		BOOL	Display help message'
    log.info ''

    return
}

Channel
    .fromFilePairs(params.read_pairs, flat: true)
    .ifEmpty { exit 1, "Read pairs could not be found: ${params.read_pairs}" }
    .into { reads }

process IndexReference {
    tag { genome.baseName }

    input:
      file genome

    output:
      file '*' into bwa_index

    script:
    """
    bwa index ${genome}
    """
}

process AlignReads {
    tag { id }

    publishDir "${params.output}", mode: "move", pattern: "*.sam"

    input:
      set id, file(forward), file(reverse) from reads
      file index from bwa_index.first()
      file genome

    output:
      set id, file("${id}_alignment.sam")

    script:
    """
    bwa mem ${genome} ${forward} ${reverse} -t ${threads} > ${id}_alignment.sam
    """
}
