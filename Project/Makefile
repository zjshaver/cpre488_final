# Simple Makefile to build launcher_driver.ko and launcher_control

obj-m += launcher_driver.o
KDIR := ../linux/linux-xlnx/
PWD := $(shell pwd)

CC := $(CROSS_COMPILE)gcc
BIN = passthrough
SOURCES = $(BIN:=.c)


all: $(BIN)
	echo "Compiling..."

$(BIN): $(SOURCES)
	$(CC) $@.c -o $@

clean:
	-rm $(BIN) || true

