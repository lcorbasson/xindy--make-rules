
ifdef MODDIR
INSTDIR=${MODDIR}/styles
else
INSTDIR=/usr/local/lib/xindy/modules/styles
endif

XDYSTYLES= \
  makeindex.xdy

install :
	mkdir -p $(INSTDIR)
	cp -P ./*.xdy $(INSTDIR)
