/*
 * Architektura procesoru (ACH 2015)
 * Projekt c. 1 (matvec)
 * Login: xlogin00
 */

#include <cfloat>
#include <cmath>
#include "nbody.h"

void particles_simulate(t_particles p)
{
    /* ZDE JE MISTO PRO VAS KOD */
}

void particles_read(FILE *fp, t_particles p)
{
    int i;
    for (i = 0; i < N; i++)
    {
        fscanf(fp, "%f %f %f %f %f %f %f \n",
            &p[i].pos_x, &p[i].pos_y, &p[i].pos_z,
            &p[i].vel_x, &p[i].vel_y, &p[i].vel_z,
            &p[i].weight);
    }
}

void particles_write(FILE *fp, t_particles p)
{
    int i;
    for (i = 0; i < N; i++)
    {
        fprintf(fp, "%10.10f %10.10f %10.10f %10.10f %10.10f %10.10f %10.10f \n",
            p[i].pos_x, p[i].pos_y, p[i].pos_z,
            p[i].vel_x, p[i].vel_y, p[i].vel_z,
            p[i].weight);
    }
}
