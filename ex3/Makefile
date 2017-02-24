CC = icpc
MPCC = mpicxx
OPENMP = -openmp
CFLAGS = -Wall -O3
LIBS =
LDFLAGS := -lrt

all: clean helloworld matrix pi


helloworld.o: helloworld.cpp
        $(CC) -c $(OPENMP) $(CFLAGS) helloworld.cpp

matrix.o: matrix.cpp
        $(CC) -c $(OPENMP) $(CFLAGS) matrix.cpp

pi.o: pi.cpp
        $(CC) -c $(OPENMP) $(CFLAGS) pi.cpp

helloworld: helloworld.o
        $(CC) -o helloworld $(OPENMP) helloworld.o

matrix: matrix.o
        $(CC) -o matrix $(OPENMP) matrix.o

pi: pi.o
        $(CC) -o pi $(OPENMP) pi.o

clean:
        rm -f *.o $(TARGETS) *.stdout *.txt

