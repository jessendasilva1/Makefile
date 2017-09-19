CC = gcc
CFLAGS = -Wall -pedantic -std=c99 -Iinc
SRCMAIN =  src/main.c src/add.c           
#$(wildcard *.c) for all .c files in a folder
SRCTESTMAIN = src/testmain.c
MAIN = main 
TESTMAIN = testmain
OBJSMAIN = $(SRCMAIN:.c=.o)
OBJSTESTMAIN = $(SRCTESTMAIN:.c=.o)
RM = rm -f
TARGET1 = program
TARGET2 = test
SUBDIR = src
BIN = bin

all:$(MAIN) $(TESTMAIN) 

$(MAIN):$(OBJSMAIN)
	$(CC) $(CFLAGS) -o $(BIN)/$(MAIN) $(OBJSMAIN)

$(TESTMAIN):$(OBJSTESTMAIN)
	$(CC) $(CFLAGS) -o $(BIN)/$(TESTMAIN) $(OBJSTESTMAIN)

$(TARGET1):$(MAIN)
	./$(BIN)/$(MAIN)

$(TARGET2):$(TESTMAIN)
	./$(BIN)/

clean: $(SUBDIR)
	$(RM) *.o $(OBJSTESTMAIN) $(OBJSMAIN)

sayhi:
	@echo 'This makefile can run and compile 2 different programs'

cls:
	clear