CC=clang
CFLAGS=-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow
LDLIBS=-lcrypt -lcs50 -lm

all: $(target).c
	$(CC) $(CFLAGS) $(LDLIBS) $(target).c -o $(target)

run: $(target)
	./$(target)

clean:
	rm $(target)
