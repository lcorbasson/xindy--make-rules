BINDIR=/usr/local/bin
export MODDIR=/usr/local/lib/xindy/modules

%.ind : example.raw %.xdy
	xindy -o $*.ind -l $*.xlg -L 3 $*.xdy example.raw

all : ALPHABETS INPUTENC

ALPHABETS:
	@echo making alphabets...
	@(cd alphabets && $(MAKE)) || exit 1

INPUTENC:
	@echo making inputenc...
	@(cd inputenc && $(MAKE)) || exit 1


install : ALPHABETS-install INPUTENC-install STYLES-install
	mkdir -p $(BINDIR)
	cp -P makeindex.sh $(BINDIR)

ALPHABETS-install:
	@echo making alphabets...
	@(cd alphabets && $(MAKE) install) || exit 1

INPUTENC-install:
	@echo making inputenc...
	@(cd inputenc && $(MAKE) install) || exit 1

STYLES-install:
	@echo making styles...
	@(cd styles && $(MAKE) install) || exit 1


clean : ALPHABETS-clean INPUTENC-clean
	$(RM) *.xlg *.ind *~

ALPHABETS-clean:
	@echo making alphabets...
	@(cd alphabets && $(MAKE) clean) || exit 1

INPUTENC-clean:
	@echo making inputenc...
	@(cd inputenc && $(MAKE) clean) || exit 1

