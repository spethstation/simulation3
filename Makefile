# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c11

# Target program
TARGET = program

# Source files
SRCS = sim3.c

# Default rule
all: $(TARGET)

# Rule to build the target
$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRCS)

# Clean rule to remove the compiled program and other temporary files
clean:
	rm -f $(TARGET)

# Phony targets
.PHONY: all clean
