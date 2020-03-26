#!/bin/bash

for dataset in collegemsg 
do

for seed in  30
     do

    edgelist=datasets/${dataset}/edgelist.tsv
    features=datasets/${dataset}/feats.csv
    labels=datasets/${dataset}/labels.csv
    output=edgelists/${dataset}

    edgelist_f=$(printf "${output}/seed=%03d/training_edges/edgelist.tsv" ${seed} )

    if [ ! -f $edgelist_f  ]
    then
        python remove_edges.py --edgelist=$edgelist --output=$output --seed $seed
        #python remove_edges.py --edgelist=$edgelist --features=$features --labels=$labels --output=$output --seed $seed
    fi
done
done