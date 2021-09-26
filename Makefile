build:
	gcc sb/sb.c util.c exporter.c goi.c main.c -o goi
	gcc -g sb/sb.c util.c exporter.c goi_pthread.c main.c -o goi_threads
	#gcc -Xpreprocessor -fopenmp sb/sb.c util.c exporter.c goi_omp.c main_omp.c -o goi_omp -lomp
	gcc -fopenmp sb/sb.c util.c exporter.c goi_openmp.c main_pthread.c -o goi_omp
clean:
	rm -f *.out *.gch