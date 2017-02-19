CC = icpc
MPCC = mpicxx
OPENMP = -openmp
CFLAGS = -Wall -O3
LIBS =

all: helloworld


helloworld.o: helloworld.cpp
         $(CC) -c $(OPENMP) $(CFLAGS) helloworld.cpp


helloworld: helloworld.o
         $(CC) -o helloworld $(OPENMP) helloworld.o


clean:
         rm -f *.o $(TARGETS) *.stdout *.txt
