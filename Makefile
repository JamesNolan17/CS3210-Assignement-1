build:
	gcc sb/sb.c util.c exporter.c goi.c main.c -o goi.out
	gcc -pthread -g sb/sb.c util.c exporter.c goi_pthread.c main_pthread.c -o goi_threads.out
	#gcc -Xpreprocessor -fopenmp sb/sb.c util.c exporter.c goi_omp.c main_omp.c -o goi_omp.out -lomp
	gcc -fopenmp sb/sb.c util.c exporter.c goi_omp.c main_omp.c -o goi_omp.out
clean:
	rm -f *.out *.gch