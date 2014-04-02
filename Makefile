
BIN     = $(DESTDIR)/usr/bin
ETC     = $(DESTDIR)/etc/slus
CRON    = $(DESTDIR)/etc/cron.hourly

all:

install:
	install -d $(BIN) $(ETC) $(CRON)
	install ./bin/slus $(BIN)
	install ./etc/slus/ports.ttl $(ETC)
	install ./etc/cron.hourly/slus $(CRON)

deb:
	debuild -uc -us

release: deb
	scp ../slus_*.dsc ../slus_*.tar.gz ../slus_*.deb frob.nl:slus/
