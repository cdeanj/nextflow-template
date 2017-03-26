#!/usr/bin/env nextflow

//General configuration variables
params.help = ""
params.read_pairs = ""
params.genome = ""

// Display help menu
if(params.help) {
	log.info ''
	log.info 'Starter Template'
	log.info ''
	log.info 'Usage: '
	log.info '    nextflow <main.nf> -profile <main> [options]'
	log.info ''
	log.info 'Script Options: '
	log.info '    .         .		.'
	log.info '    .         .               .'
	log.info '    .         .               .'
	log.info ''
	return
}

// Write tuple of read pairs to channel_x
Channel
        .fromFilePairs(params.read_pairs, flat: true)
	.ifEmpty { exit 1, "Read pairs could not be found: ${params.read_pairs}" }
        .into { channel_x }

process X {
	
}

process Y {

}

process Z {

}
