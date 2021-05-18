## Exercise 1

The times of each iterations are not the same. The first iteration contains some overhead from starting up, which makes this iteration slower compared to the other iterations.

## Exercise 2

The cuda version needed 0.08584 seconds, while the OpenACC version needed between 0.01396 and 0.01419 seconds (we can ignore the first iteration). The OpenACC version was therefore much faster.

Maybe CUDA has more overhead compared to OpenACC, which slows it down on these small tasks?

## Exercise 3

I have modified the code of `cpi_cuda.cu` to iterate over all numbers in NUM_BLOCK and NUM_THREAD directly in the script (`new_cpi_cuda.cu`).

The following plot, which is based on the results that I got with `new_cpi_cuda.cu`, shows that with more blocks and/or threads, the execution time gets lowered.
This makes sense, as scaling should reduce the run time.

Sadly, I didn't manage to label the X and Y axes with the correct numbers. However, the data in the plot is taken directly from `cuda/output_new_cuda.log` and should be correct.

![colormesh plot](https://github.com/lucasseiler/hpc_esc401_solutions/blob/main/exercise_session_10/colormesh_plot.png)
