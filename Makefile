VERSION=$(shell git rev-parse --short HEAD)
CFLAGS=-g -O2 -Wall -DVERSION=\"$(VERSION)\"

all: srtla_send

srtla_send: srtla_send.o common.o getline.o

clean:
	rm -f *.o srtla_send
