//
// Created by Cai Xuemeng on 24/9/21.
//

#ifndef A1_CODE_GOI_PTHREAD_H
#define A1_CODE_GOI_PTHREAD_H

int goi_pthread(int nThreads, int nGenerations, const int *startWorld, int nRows, int nCols, int nInvasions, const int *invasionTimes, int **invasionPlans);

struct thread_data{
    int *currWorld;
    int *invaders;
    int nRows;
    int nCols;
    int row[100];
    int col[100];
    int numGrid;
    int numDeath;
};

#endif //A1_CODE_GOI_PTHREAD_H
