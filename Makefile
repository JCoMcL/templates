LDFLAGS = `test -f requirements && pkg-config --libs $$(cat requirements)`

TITLE = TEMP

SRC = $(wildcard *.c)
OBJ = ${SRC:.c=.o}

${TITLE}: verify-requirements ${SRC}
	cc -o $@ ${SRC} $(LDFLAGS)

verify-requirements:
	! test -f  requirements || pkg-config --static --libs $$(cat requirements)

%.o: %.c
	cc -o $@ $< $(LDFLAGS)

compile-commands.json:
	bear -- $(MAKE) $(TITLE)
clean:
	-rm -f $(TITLE) a.out

test: ${TITLE}
	./$(TITLE)

.PHONY: setup clean test verify-requirements
