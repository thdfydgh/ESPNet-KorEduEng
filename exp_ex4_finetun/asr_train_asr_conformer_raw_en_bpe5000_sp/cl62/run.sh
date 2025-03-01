./asr.sh --expdir exp_ex4_finetun --asr_tag train_asr_conformer_raw_en_bpe5000_sp --use_lm true --gpu_inference true --lm_tag train_lm_transformer2_en_bpe5000 --lang en --ngpu 1 --nbpe 5000 --pretrained_model exp_ex4_finetun/asr_train_asr_conformer_raw_en_bpe5000_sp/valid.acc.ave_10best.pth --skip_stages '1 ' --max_wav_duration 60 --asr_config conf/train_asr_conformer.yaml --lm_config conf/tuning/train_lm_transformer2.yaml --speed_perturb_factors '0.9 0.95 1.0 1.05 1.1' --inference_config conf/decode_asr.yaml --train_set trainFix.example --valid_set devFix.example --test_sets test1Fix.example --ignore_init_mismatch true --inference_tag cl62 --stage 12 --stage 12 "$@"; exit $?
