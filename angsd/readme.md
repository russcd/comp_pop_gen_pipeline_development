The basic concept here is to subsample reads for a species with high quality, high depth data, and to determine if we can obtain similar results using angsd. 

All pipeline implementation and development will be done in snakemake, and I will probably use perl scripts to compare the results among alterantive high depth/low depth pipelines. 

It is designed to be run from a directory containing a folder that has the out from the current alignment/filtration pipeline (i.e. bam files will be in {species}/dedup/. At present the whole thing has hardcoded assumptions about the directory structure. Since this is a purpose built pipeline to go on the backend of an alignment/filtration pipeline, I am OK with that. We could generalize this in the future. 
