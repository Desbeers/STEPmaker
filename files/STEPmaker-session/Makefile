DESTDIR := /
PREFIX  := $(DESTDIR)usr
INSTALL := install

install:
	$(INSTALL) -m 0644 -D files/STEPmaker-session.desktop $(PREFIX)/share/xsessions/STEPmaker-session.desktop
	$(INSTALL) -m 0644 -D files/STEPmaker.desktop $(PREFIX)/share/applications/STEPmaker.desktop
	$(INSTALL) -m 0644 -D files/STEPmaker.session $(PREFIX)/share/gnome-session/sessions/STEPmaker.session
	$(INSTALL) -m 0755 -D files/STEPmaker-session $(PREFIX)/bin/STEPmaker-session
	$(INSTALL) -m 0755 -D files/STEPmaker $(PREFIX)/bin/STEPmaker
	$(INSTALL) -m 0644 -D files/STEPmaker.gschema.override $(PREFIX)/share/glib-2.0/schemas/01_STEPmaker.gschema.override
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

uninstall:
	rm -f $(PREFIX)/bin/STEPmaker \
	      $(PREFIX)/bin/STEPmaker-session \
	      $(PREFIX)/share/gnome-session/sessions/STEPmaker.session \
	      $(PREFIX)/share/applications/STEPmaker.desktop \
	      $(PREFIX)/share/xsessions/STEPmaker-session.desktop \
	      $(PREFIX)/share/glib-2.0/schemas/01_STEPmaker.gschema.override
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

.PHONY: install uninstall
