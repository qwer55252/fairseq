ext=flac
valid=0.01

python examples/wav2vec/wav2vec_manifest.py \
/home/kobie/workspace/data/LibriSpeech/train-clean-100 \
--dest /home/kobie/workspace/data/LibriSpeech/manifest \
--ext $ext \
--valid-percent $valid