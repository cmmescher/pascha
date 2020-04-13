.POSIX:

ifndef PREFIX
  PREFIX = /usr/local
endif
MANPREFIX = $(PREFIX)/share/man

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin; \
	cp -f pascha $(DESTDIR)$(PREFIX)/bin/; \
	chmod 755 $(DESTDIR)$(PREFIX)/bin/pascha

	mkdir -p $(DESTDIR)$(MANPREFIX)/man1; \
	cp -f pascha.1.gz $(DESTDIR)$(MANPREFIX)/man1/pascha.1.gz; \
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/pascha.1.gz

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/pascha

	rm -f $(DESTDIR)$(MANPREFIX)/man1/pascha.1.gz

.PHONY: install uninstall
