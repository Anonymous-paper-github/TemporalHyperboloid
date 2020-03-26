#!/bin/bash


e=5
exp=lp_experiment
for dataset in  collegemsg
do
    for seed in  30
	do
     for dim in  20
     do
        for alpha in  00
        do
            if [ $alpha -eq 100 ];
            then
                alpha=1.00
            else
                alpha=0.$alpha
            fi
            if [ $seed -eq 100 ];
            then
                time=1.00
            else
                time=0.$seed
            fi

            # data_dir=datasets/${dataset}
            # edgelist=${data_dir}/edgelist.tsv
            # features=${data_dir}/feats.csv
            # labels=${data_dir}/labels.csv
            embedding_dir=embeddings/${dataset}/${exp}
            # walks_dir=walks/${dataset}/lp_experiment
            output=edgelists/${dataset}

            test_results=$(printf "test_results/${dataset}/${exp}/alpha=${alpha}/dim=%03d/" ${dim})
            embedding_f=$(printf "${embedding_dir}/alpha=${alpha}/seed=%03d/dim=%03d/%05d_embedding.csv.gz" ${seed} ${dim} ${e})
            echo $embedding_f

            args=$(echo --output ${output} --dist_fn hyperboloid \
                --embedding ${embedding_f} --seed ${seed} \
                --test-results-dir ${test_results})
            echo $args


            python evaluate_lp.py ${args}
        done
    done
done
done