subset=test-clean
export PYTHONPATH=$PYTHONPATH:/home/kobie/workspace/fairseq

python examples/speech_recognition/infer.py \
/home/kobie/workspace/data/LibriSpeech/test-clean \
--task audio_finetuning \
--nbest 1 \
--path /home/kobie/workspace/fairseq/outputs/2024-09-27/16-33-40/checkpoints/checkpoint_best.pt \
--gen-subset $subset \
--results-path /home/kobie/workspace/fairseq/outputs/evaluation \
--w2l-decoder viterbi \
--lm-model /home/kobie/workspace/fairseq/weights/lm_librispeech_word_transformer.pt \
--lm-weight 2 \
--word-score -1 \
--sil-weight 0 \
--criterion ctc \
--labels ltr \
--max-tokens 4000000 \
--post-process letter \
&> train_log.txt
# --tensorboard-logdir /home/kobie/workspace/fairseq/outputs


# --lm-model /path/to/kenlm.bin \