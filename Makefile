CC = gcc
CFLAGS = -Wall -Werror

SRC = main.c utils.c
OBJ = $(SRC:.c=.o)
TARGET = app.exe

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o $(TARGET)
