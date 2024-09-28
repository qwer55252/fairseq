#!/bin/bash

fairseq-hydra-train \
    +task.data=/home/kobie/workspace/data/LibriSpeech \
    +model.w2v_path=/home/kobie/workspace/fairseq/weights/wav2vec_small.pt \
    --config-dir /home/kobie/workspace/fairseq/examples/wav2vec/config/finetuning \
    --config-name base_100h &> train_log.txt