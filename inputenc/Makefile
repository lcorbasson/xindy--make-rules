
ifdef MODDIR
INSTDIR=${MODDIR}/tex/inputenc
else
INSTDIR=/tmp/tex/inputenc
endif


XDYS=latin1.xdy latin2.xdy latin3.xdy latin9.xdy cp1250.xdy cp1252.xdy \
cp437.xdy cp850.xdy \
iso88595.xdy koi8-r.xdy koi8-u.xdy isoir111.xdy cp1251.xdy \
cp855.xdy cp866.xdy

XLGS=$(XDYS:.xdy=.xlg)
TEXS=$(XDYS:.xdy=.tex)
IDXS=$(XDYS:.xdy=.idx)

all : $(XDYS)

tex : $(TEXS)

idx : $(IDXS)

test : $(XLGS)
	for i in $(XLGS); do echo "Testing $$i:"; perl test-inp-rules.pl <$$i; done

%.raw : %.idx
	grep -v Error $< | tex2xindy-noquote >$@

%.ind %.xlg : %.raw test-%.xdy
	xindy -l $*.xlg -L 1 test-$*.xdy $<

test-%.xdy :
	echo '(require "tex/inputenc/$*.xdy")' >$@
	echo '(define-location-class "arabic-page-numbers" ("arabic-numbers"))' >>$@
	echo '(define-attributes ("default"))' >>$@

%.tex :
	perl make-testidx.pl TS1,T2A,T1 $* >$*.tex

%.idx : %.tex
	latex $*.tex

%.xdy : %.idx
	perl make-inp-rules.pl <$*.idx >$*.xdy

install : all
	mkdir -p $(INSTDIR)
	cp $(XDYS) $(INSTDIR)

clean :
	$(RM) $(XDYS) test-*.xdy *.raw *.ind *.xlg \
	  *.tex *.dvi *.idx *.log *.aux *~
