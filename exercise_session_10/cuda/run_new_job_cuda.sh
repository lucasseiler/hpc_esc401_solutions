#!/bin/bash -l
#SBATCH --job-name="cpi_cuda_get_time"
#SBATCH --account="uzg2"
#SBATCH --mail-type=ALL
#SBATCH --mail-user=lucas.seiler@uzh.ch
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=12
#SBATCH --cpus-per-task=1
#SBATCH --partition=normal
#SBATCH --constraint=gpu
#SBATCH --hint=nomultithread
#SBATCH --output output_new_cuda.log
#SBATCH --error errors_new_cuda.log

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

srun new_cpi_cuda
