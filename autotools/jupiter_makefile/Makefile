prefix=/usr
export prefix
bindir=$(prefix)/bin
export bindir

all clean check install jupiter:
	cd src && $(MAKE) $@

.PHONY: all clean check dist distcheck install
