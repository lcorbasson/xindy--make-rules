BINDIR=/usr/local/bin
MODDIR=/usr/local/lib/xindy/modules

all : xorty

test : xorty-sorted.txt xorty-test.raw

xorty-sorted.txt : xorty-test.txt xorty.xdy
	xindy -o $@ -l xorty-test.xlg -L 3 -f xorty example.xdy $<

xorty-test.raw : xorty-test.txt
	xorty <$< >$@

install : xorty
	mkdir -p $(BINDIR)
	cp -P xorty $(BINDIR)
	mkdir -p $(MODDIR)/misc
	cp -P xorty.xdy $(MODDIR)/misc

clean :
	$(RM) *.xlg xorty-sorted.txt *.raw xorty *.o *~

.PHONY : clean install all
