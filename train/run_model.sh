#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:8
#SBATCH --mail-type=ALL
#SBATCH --mail-user=tgoldsack1@sheffield.ac.uk
#SBATCH --time=1-00:00:00



module load python/anaconda3

source activate bartscore

# pip freeze

python bart.py --train_file data/formatted_data/subtask1/eLife_train.json --validation_file data/formatted_data/subtask1/eLife_val.json --output_dir models/st1_elife