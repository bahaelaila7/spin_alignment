#!/bin/sh
export PYTHONPATH="$PYTHONPATH:alignment-handbook/src/:trl/"
PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True ACCELERATE_LOG_LEVEL=info accelerate launch  --main_process_port 29502 --config_file recipes/accelerate_configs/multi_gpu.yaml alignment-handbook/scripts/run_cpo.py recipes/smollm2/cposimpo/config_smol.yaml
