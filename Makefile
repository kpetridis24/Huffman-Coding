CC=g++
CFLAGS=-O3
BUILD_DIR=build
SRC_DIR=src
INCLUDE_DIR=./include
SOURCES := $(shell find $(SRC_DIR) -name '*.cpp')

$(info $(shell mkdir -p $(BUILD_DIR)))

default:
	$(CC) -o $(BUILD_DIR)/main -I$(INCLUDE_DIR) $(SOURCES) $(CFLAGS)
	./build/main

clean:
	rm test