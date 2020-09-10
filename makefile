PREFIX ?= /usr/share/
DOCDIR ?= $(PREFIX)/share/kurcoder/doc

all:
	@echo Run \'make install\' to install kurcoder.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p kurcoder.py $(DESTDIR)$(PREFIX)/bin/kurcoder
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/kurcoder

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/kurcoder
	@rm -rf $(DESTDIR)$(DOCDIR)
	@rm -rf $(DESTDIR)$(PREFIX)/share/kurcoder
