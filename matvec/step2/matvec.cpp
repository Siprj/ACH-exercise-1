/*
 * Architektura procesoru (ACH 2015)
 * Projekt c. 1 (matvec)
 * Login: xsiprj01
 */

#include "matvec.h"

void mat_vec_mul(unsigned int rows, unsigned int cols, float a[][cols], float b[cols], float c[rows])
{
    int i, j;
    for (i = 0; i < rows; i++)
    {
        #pragma ivdep
        c[i] = 0.0f;
        for (j = 0; j < cols; j++)
        {
            c[i] += a[i][j] * b[j];
        }
    }
}
