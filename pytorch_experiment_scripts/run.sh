#!/bin/bash
for filter in 4 16 32 64
do
        for layer in 1
        do
                name="mp_l"$layer"_f"$filter
                python train_evaluate_emnist_classification_system.py --dim_reduction_type max_pooling --num_layers $layer --num_filters $filter --experiment_name $name --use_gpu True
      	done
done

