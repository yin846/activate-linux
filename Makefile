CC       = gcc
SOURCES  = $(wildcard *.c)
TARGETS  = activate_redhat

RM = rm
name := $(shell uname -s)

# Linux specific flags
ifeq ($(name),Linux)
    BINARY  = activate_redhat
	CFLAGS  = -lX11 -lXfixes -lXinerama -lcairo -I/usr/include/cairo
endif

.PHONY: all clean test

all: $(TARGETS)

activate_redhat:
	rm -f -r bin
	mkdir bin
	$(CC) src/activate_redhat.c -o bin/$(BINARY) $(CFLAGS)

# clean
clean:
	$(RM) bin/$(BINARY)

# build and run
test: test $(TARGETS)
	./bin/$(BINARY)
