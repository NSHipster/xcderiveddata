SHELL = /bin/bash

prefix ?= /usr/local
bindir ?= $(prefix)/bin
srcdir = src

.DEFAULT_GOAL = all

.PHONY: all
all: xcderiveddata

xcderiveddata: $(srcdir)/xcderiveddata.bash
	@cp $< $@
	@chmod +x $@

.PHONY: install
install: xcderiveddata
	@install -d "$(bindir)"
	@install xcderiveddata "$(bindir)"

.PHONY: uninstall
uninstall:
	@rm -rf "$(bindir)/xcderiveddata"

.PHONY: clean
clean:
	@rm -f xcderiveddata
