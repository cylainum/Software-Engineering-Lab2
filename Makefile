.PHONY: clean program

program : checker

checker : main.o isEven.o isOdd.o
	gcc main.o isEven.o isOdd.o -o checker


main.o : main.c isEven.h isOdd.h
	gcc -c main.c -o main.o

isEven.o : isEven.c isEven.h
	gcc -c isEven.c -o isEven.o

isOdd.o : isOdd.c isOdd.h
	gcc -c isOdd.c -o isOdd.o



clean:
	rm -f checker main.o isOdd.o isEven.o

#Thank you for the help :)