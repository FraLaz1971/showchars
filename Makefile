CC	= gcc -g -O
RM	= rm
OBJ	= showchars.o
LDFLAGS = -lm
TARGET 	= showchars
DATASET = numbers.txt

all: showchars data

showchars.o: showchars.c
	$(CC) -c showchars.c -o showchars.o

$(TARGET): showchars.o
	$(CC) showchars.o -o showchars $(LDFLAGS)

.PHONY: clean all plot data

clean:
	$(RM) $(OBJ) $(TARGET) $(DATASET)

data: $(TARGET)
	./$(TARGET) > $(DATASET)

plot: data
	gnuplot -p -e "plot '"$(DATASET)"'"
