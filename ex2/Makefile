CC = icpc
MPCC = mpicxx
OPENMP = -openmp
CFLAGS = -Wall -O3
LIBS =
LDFLAGS := -lrt

all: clean helloworld matrix


helloworld.o: helloworld.cpp
        $(CC) -c $(OPENMP) $(CFLAGS) helloworld.cpp

matrix.o: matrix.cpp
        $(CC) -c $(OPENMP) $(CFLAGS) matrix.cpp

helloworld: helloworld.o
        $(CC) -o helloworld $(OPENMP) helloworld.o

matrix: matrix.o
        $(CC) -o matrix $(OPENMP) matrix.o

clean:
        rm -f *.o $(TARGETS) *.stdout *.txt
