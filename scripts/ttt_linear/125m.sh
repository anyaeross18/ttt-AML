#!/bin/bash

DATA_PATH="/content/drive/MyDrive/govReport"
DATA_NAME="kmfoda/gov_report"

# Product should equal 0.5 million
SEQ_LEN=2048
BS=256

# Experiment details
EXP_NAME="linear_125m"
EXP_DIR="/content/drive/MyDrive/linear_125m"

mkdir -p "/${EXP_DIR}/${EXP_NAME}" && chmod -R 777 "/${EXP_DIR}/${EXP_NAME}";
cd ../..

PYTHONPATH="/content/ttt-AML" python3 /content/ttt-AML/ttt/train.py \
        --mesh_dim='!-1,1,1' \
        --dtype='fp32' \
        --total_steps=100 \
        --save_checkpoint_freq=100 \
        --save_milestone_freq=100 \
        --load_model_config='125m-TTT' \
        --update_model_config="dict(seq_modeling_block='ttt_linear', ttt_base_lr=1.0)" \
        --dataset_path=${DATA_PATH} \
        --dataset_name=${DATA_NAME} \
        --seq_length=${SEQ_LEN} \
        --global_batch_size=${BS} \
        --optimizer.type='adamw' \
        --optimizer.adamw_optimizer.weight_decay=0.1 \
        --optimizer.adamw_optimizer.lr=1e-4 \
        --optimizer.adamw_optimizer.end_lr=9e-5 \
        --optimizer.adamw_optimizer.lr_warmup_steps=100 \
        --optimizer.adamw_optimizer.lr_decay_steps=10000 \
        --exp_dir=${EXP_DIR} \
        --exp_name=${EXP_NAME}
