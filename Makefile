PREFIX ?= /usr/local
DESTDIR ?=

all:

install:
	install -d $(DESTDIR)$(PREFIX)/share/plainbuilder/
	install -d $(DESTDIR)$(PREFIX)/share/plainbuilder/pbuilder-hooks
	install -d $(DESTDIR)$(PREFIX)/bin/
	install pbuilderrc $(DESTDIR)$(PREFIX)/share/plainbuilder/
	install -m 0755 pbuilder-hooks/* $(DESTDIR)$(PREFIX)/share/plainbuilder/pbuilder-hooks/
	install -m 0755 plainbuilder $(DESTDIR)$(PREFIX)/bin/
	sed -i -e 's!@PREFIX@!$(PREFIX)!g' $(DESTDIR)$(PREFIX)/bin/plainbuilder
