#!/bin/sh
export PYTHONPATH="$PYTHONPATH:alignment-handbook/src/"
PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True ACCELERATE_LOG_LEVEL=info accelerate launch --config_file recipes/accelerate_configs/multi_gpu.yaml alignment-handbook/scripts/run_dpo.py recipes/smollm2/dpo/config_smol.yaml
