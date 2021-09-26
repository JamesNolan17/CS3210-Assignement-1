import os
import time

path = os.getcwd()
os.system("make clean")
os.system("make build")
print(path)
result_normal = []
result_omp = {}
result_pthread = {}
for sample_id in range(0, 7):
    # Test sequential program
    T1 = time.time()
    os.system(f"./goi {path}/sample_inputs/sample{sample_id}.in test.out 1")
    T2 = time.time()
    time_taken_ms = (T2 - T1) * 1000
    result_normal.append(time_taken_ms)
    result_pthread[sample_id] = {}
    result_omp[sample_id] = {}

    for thread_number in range(1, 65, 8):
        T1 = time.time()
        os.system(f"./goi_threads {path}/sample_inputs/sample{sample_id}.in test.out {thread_number}")
        T2 = time.time()
        time_taken_ms = (T2 - T1) * 1000
        result_pthread[sample_id][thread_number] = time_taken_ms

        T1 = time.time()
        os.system(f"./goi_omp {path}/sample_inputs/sample{sample_id}.in test.out {thread_number}")
        T2 = time.time()
        time_taken_ms = (T2 - T1) * 1000
        result_omp[sample_id][thread_number] = time_taken_ms
print("Normal")
print(str(result_normal))
print("omp")
print(str(result_omp))
print("pthread")
print(str(result_pthread))
