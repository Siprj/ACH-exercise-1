# Architektura procesoru (ACH 2015)
# Projekt c. 1 (matvec)
# Login: xsiprj01

CFLAGS=-lpapi -wd588 -ansi-alias
OPT=-O2 -xavx
REPORT=-opt-report=5

N=1000
DT=0.001f
STEPS=1000

PARAMS=-DN=$(N) -DDT=$(DT) -DSTEPS=$(STEPS)

INPUT=../input.dat
OUTPUT=../step0.dat

PAPI_EVENTS=PAPI_FP_OPS|PAPI_SP_OPS

all:
	icpc $(CFLAGS) $(OPT) $(REPORT) $(PARAMS) -c nbody.cpp
	icpc $(CFLAGS) $(OPT) $(PARAMS) -S -fsource-asm -c nbody.cpp
	icpc $(CFLAGS) $(PARAMS) nbody.o main.cpp -o nbody
	icpc $(CFLAGS) gen.cpp -o gen

clean:
	rm -f *.o nbody

run:
	PAPI_EVENTS='$(PAPI_EVENTS)' ./nbody $(INPUT) $(OUTPUT)
