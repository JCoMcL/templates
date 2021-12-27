TITLE = TEMP

%.o: %.c
	cc -c ${CFLAGS} $< -o $@

clean:
	-rm -f ${OBJ} ${SRC:.c=.h} ${TITLE}

test: ${TITLE}
	./$<

.PHONY: setup clean test
