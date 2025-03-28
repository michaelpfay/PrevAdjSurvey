#!/bin/bash

#SBATCH --partition=norm
#SBATCH --ntasks=1
#SBATCH --ntasks-per-core=1
#SBATCH --time=48:00:00
#SBATCH --mem=4g
#SBATCH --array=453,330,516,364
#SBATCH --gres=lscratch:10
#SBATCH --job-name="imperfect"

module load R

Rscript --vanilla imperfect_assay_arrayjob.R ${SLURM_ARRAY_TASK_ID}


