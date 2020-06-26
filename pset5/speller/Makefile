CC=clang
CFLAGS=-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -Qunused-arguments -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow
# CFLAGS= -ggdb3 -O3 -Qunused-arguments -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow
LDLIBS=-lcrypt -lcs50 -lm

all: dictionary.o speller.o
	$(CC) $(CFLAGS) $(LDLIBS) -o speller speller.o dictionary.o

dictionary.o: dictionary.h dictionary.c
		$(CC) $(CFLAGS) $(LDLIBS) dictionary.c -c -o dictionary.o

speller.o: speller.c
		$(CC) $(CFLAGS) $(LDLIBS) speller.c -c -o speller.o

clean:
	rm *.o
	rm speller