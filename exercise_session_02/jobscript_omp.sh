#!/bin/bash -l
#SBATCH --job-name="lseiler_omp"
#SBATCH --account=uzh8
#SBATCH --mail-type=ALL
#SBATCH --mail-user=lucas.seiler@uzh.ch
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-core=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=36
#SBATCH --partition=debug
#SBATCH --constraint=mc
#SBATCH --hint=nomultithread
#SBATCH --output output_omp.log
#SBATCH --error errors_omp.log
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

srun ~/hpc_esc401_solutions/exercise_session_02/cpi_mpi
