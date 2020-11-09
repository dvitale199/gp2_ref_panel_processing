#!/usr/bin/env bash

while getopts i:o:f: flag
do
    case "${flag}" in
        i) INPUT=${OPTARG};;
        o) OUTPUT=${OPTARG};;
        f) FASTSTRUCTURE=${OPTARG};;
    esac
done

source /data/$USER/conda/etc/profile.d/conda.sh && conda activate base && conda activate fastStructure

python $FASTSTRUCTURE\
 -K 8\
 --input=$INPUT\
 --output=$OUTPUT