ext=flac
valid=0.00

python examples/wav2vec/wav2vec_manifest.py \
/home/kobie/workspace/data/LibriSpeech/train-clean-100 \
--dest /home/kobie/workspace/data/LibriSpeech/manifest \
--ext $ext \
--valid-percent $valid

python examples/wav2vec/wav2vec_manifest.py \
/home/kobie/workspace/data/LibriSpeech/test-clean \
--dest /home/kobie/workspace/data/LibriSpeech/test-clean \
--ext $ext \
--valid-percent $valid