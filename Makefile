PKGNAME = bosnov
PREFIX ?= /usr

SHARE_DIR = $(DESTDIR)$(PREFIX)/share
LIB_DIR = $(DESTDIR)$(PREFIX)/lib
BIN_DIR = $(DESTDIR)$(PREFIX)/bin
CONF_DIR = $(DESTDIR)/etc

.PHONY: install

install:
	@install -Dm644 initcpio/bosnov.hook -t $(LIB_DIR)/initcpio/hooks/$(PKGNAME)
	@install -Dm644 initcpio/bosnov.install -t $(LIB_DIR)/initcpio/install/$(PKGNAME)
	@install -Dm644 hooks/*   -t $(SHARE_DIR)/libalpm/hooks/
	@install -Dm644 LICENSE   -t $(SHARE_DIR)/licenses/$(PKGNAME)
	@install -Dm644 README.md -t $(SHARE_DIR)/doc/$(PKGNAME)
	@install -Dm644 bosnov.conf -t $(CONF_DIR)/$(PKGNAME).conf
	@install -Dm755 bosnov -t $(BIN_DIR)/$(PKGNAME)
