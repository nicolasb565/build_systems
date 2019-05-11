all: jupiter

jupiter: main.c
	gcc -O2 -o $@ main.c

clean:
	rm jupiter

install:
	install -d $(DESTDIR)$(bindir)
	install -m 0755 jupiter $(DESTDIR)$(bindir)

.PHONY: all clean check install
