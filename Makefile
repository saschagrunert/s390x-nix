src = $(wildcard src/*.c)
obj = $(src:.c=.o)

override LIBS +=
CFLAGS ?= -static

all: bin/demo

bin/demo: $(obj) | bin
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS) $(LIBS)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -O3 -o $@ -c $<

bin:
	mkdir -p $@
