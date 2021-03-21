CFLAGS=-fopenmp

cpi: cpi.o gettime.o
	cc -O3 -o cpi cpi.o gettime.o

cpi.o: cpi.c gettime.h
	cc -O3 -ffast-math -mavx2 -c -o cpi.o cpi.c

gettime.o: gettime.c gettime.h
	cc -O3 -ffast-math -mavx2 -c -o gettime.o gettime.c

cpi_mpi: cpi_mpi.o gettime.o
	cc -O3 -o cpi_mpi cpi_mpi.o gettime.o

cpi_mpi.o: cpi_mpi.c gettime.h
	cc -O3 -ffast-math -mavx2 -c -o cpi_mpi.o cpi_mpi.c

sum: sum.o gettime.o
	cc -O2 -ffast-math -mavx2 -o sum sum.o gettime.o

sum.o: sum.c gettime.h
	cc -O2 -ffast-math -mavx2 -c -o sum.o sum.c

sum_omp: sum_omp.o gettime.o
	cc -O2 -ffast-math -mavx2 -fopenmp -o sum_omp sum_omp.o gettime.o

sum_omp.o: sum_omp.c gettime.h
	cc -O2 -ffast-math -mavx2 -c -fopenmp -o sum_omp.o sum_omp.c

all: cpi_mpi cpi sum sum_omp

clean:
	rm -f cpi cpi.o gettime.o cpi_mpi cpi_mpi.o sum sum.o sum_omp sum_omp.o
