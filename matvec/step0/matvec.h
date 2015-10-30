/*
 * Architektura procesoru (ACH 2015)
 * Projekt c. 1 (matvec)
 * Login: ihrbacek
 */

#ifndef __MATVEC_H__
#define __MATVEC_H__

void mat_vec_mul(unsigned int rows, unsigned int cols, float a[][cols], float b[cols], float c[rows]);

#endif /* __MATVEC_H__ */
