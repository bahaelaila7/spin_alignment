#!/bin/sh
export PYTHONPATH="$PYTHONPATH:alignment-handbook/src/:trl/"
HF_DATASETS_OFFLINE=1 PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True ACCELERATE_LOG_LEVEL=info accelerate launch --main_process_port 29569 --config_file recipes/accelerate_configs/multi_gpu.yaml alignment-handbook/scripts/run_cpo2.py recipes/smollm2/calcpo_higher_beta/config_smol.yaml
