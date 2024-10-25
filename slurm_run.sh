#!/bin/bash
#SBATCH -c 32 # Number of Cores per Task
#SBATCH --mem=32768 # Requested Memory
#SBATCH -p superpod-a100 # Partition
#SBATCH -G 1 # Number of GPUs
#SBATCH -t 01:00:00 # Job time limit
#SBATCH -o slurm-%j.out # %j = job ID

module load conda/latest
module load cuda/12.6
module load cudnn/8.9.7.29-12-cuda12.6

conda activate ~/conda/envs/watermarking/

bash scripts/main/run_sweet_generation.sh
bash scripts/main/run_sweet_detection.sh
bash scripts/main/run_sweet_detection_human.sh
bash scripts/main/run_sweet_calculating_metrics.sh