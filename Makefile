CC = gcc
CFALGS = -Wall -Wextra
SRCS = main.c
OBJS = $(SRCS:.c=.o)
MAIN = main

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LIBS)
.c.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) *.o *.~ $(MAIN)
