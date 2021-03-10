#!/bin/bash -l
#SBATCH --job-name="lseiler"
#SBATCH --account=uzh8
#SBATCH --mail-type=ALL
#SBATCH --mail-user=lucas.seiler@uzh.ch
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=36
#SBATCH --cpus-per-task=1
#SBATCH --partition=debug
#SBATCH --constraint=mc
#SBATCH --hint=nomultithread
#SBATCH --error errors.log
#SBATCH --output output.log
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

srun hostname
