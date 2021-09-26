build:
	gcc sb/sb.c util.c exporter.c goi.c main.c -o goi.out

buildO:
	gcc -Xpreprocessor -fopenmp sb/sb.c util.c exporter.c goi_openmp.c main.c -o goi.out -lomp

buildP:
	gcc sb/sb.c util.c exporter.c goi_pthread.c main.c -o goi.out

clean:
	rm -f *.out *.gch