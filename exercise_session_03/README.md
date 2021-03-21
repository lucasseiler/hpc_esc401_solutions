# Exercise Session 03 #
In this session, you will work on modularization of the code and compilation optimization. Moreover, you will parallelize a simple code and successively plot its speedup. 
In this folder you can find:

* cpi.c : the serial version of last week parallel code, needed for Exercise 1
* cpi_mpi.c : the MPI version of cpi code, for Exercise 1
* sum.c : the code needed for Exercise 2 

## Solutions

### Exercise 1

Execution times:
Time Version | Time
------------ | -------------
Serial | 2.583 seconds
MPI MPI_Wtime() | 4.018 seconds
MPI getTime() | 4.02 seconds

I suspect the difference in MPI times is because MPI_Wtime() only measures the execution time of the for-loop, while getTime() measures the execution time of the entire MPI process.

### Exercise 2

The difference in the execution flags reaches from roughly 6 seconds with no optimisation (`-fO0`) to just slightly more than 2 seconds with a lot of optimisation (`-fO3`). The flags `-ffast-math` and `-mavx2` seem to give the execution time also a small boost, but at most a few hundredths of a second.

Issue: It was not possible for me to open the file `speedup.eps` on daint, but I had a look at it on my computer and the plot seems to be ok. I have documented the issue on the Slack channel of exercise session 3.

### Exercise 3

Maybe superlinear speedup is caused by efficient memory usage? E.g. due to several processes, not that much information needs to be stored at once, so slower memory usage (like saving data on the harddrive) can be avoided.
