set title 'OpenMP Speedup'
set xlabel 'Threads'
set ylabel 'Speedup'
set key top left
plot x t 'Ideal Speedup’, "sum_openmp.dat" u 1:(2.363/$2) w l t 'OpenMP'
