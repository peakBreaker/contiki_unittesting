CONTIKI_PROJECT = my_test
all: $(CONTIKI_PROJECT)

TARGET=native
APPS+=unit-test

CONTIKI = ./contiki/
include $(CONTIKI)/Makefile.include

CFLAGS+=-g

.PHONY: clean myclean
clean: myclean

myclean:
	rm -rf *.native symbols.*
