#!/bin/bash

#SBATCH --job-name test
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=4
#SBATCH --mem-per-gpu=3G
#SBATCH --time 1-0
#SBATCH --partition batch_ce_ugrad
#SBATCH -x sw1
#SBATCH -o slurm/logs/slurm-%A-%x.out

python preprocess.py MSDS

exit 0