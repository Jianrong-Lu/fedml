#!/usr/bin/env bash

GPU=$1

CLIENT_NUM=$2

WORKER_NUM=$3

BATCH_SIZE=$4

DATASET=$5

DATA_PATH=$6

MODEL=$7

DISTRIBUTION=$8

ROUND=$9

EPOCH=$10

LR=$11

OPT=$12

DEFEND_TYPE=$13

INIT_R=$14

PARTITION_ALPHA=$15

python3 ./main.py \
--gpu $GPU \
--dataset $DATASET \
--data_dir $DATA_PATH \
--model $MODEL \
--partition_method $DISTRIBUTION  \
--client_num_in_total $CLIENT_NUM \
--client_num_per_round $WORKER_NUM \
--comm_round $ROUND \
--epochs $EPOCH \
--batch_size $BATCH_SIZE \
--client_optimizer $OPT \
--lr $LR \
--defend_type $DEFEND_TYPE \
--init_r $INIT_R \
--partition_alpha $PARTITION_ALPHA
