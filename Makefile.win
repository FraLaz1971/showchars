CC	= gcc -g -O
RM	= del
OBJ	= showchars.o
LDFLAGS = -lm
TARGET 	= showchars.exe
DATASET = numbers.txt


all: $(TARGET)

showchars.o: showchars.c
	$(CC) -c showchars.c -o showchars.o

$(TARGET): showchars.o
	$(CC) showchars.o -o $(TARGET) $(LDFLAGS)

.PHONY: clean all plot data

clean:
	$(RM) $(OBJ) $(TARGET) $(DATASET)

data: $(TARGET)
	.\$(TARGET) > $(DATASET)

plot: data
	cmd /c plotchars.bat
