
# $Id$

ifdef MODDIR
INSTDIR=${MODDIR}/lang
else
INSTDIR=/usr/local/lib/xindy/modules/lang
endif

XDYSLATIN1= \
  albanian/latin1.xdy \
  danish/latin9.xdy danish/cp1252.xdy \
  dutch/ij-as-ij-latin1.xdy \
  english/latin9.xdy english/cp1252.xdy \
  estonian/latin9.xdy estonian/cp1252.xdy \
  finnish/latin9.xdy finnish/cp1252.xdy \
  french/latin9.xdy french/cp1252.xdy \
  german/din5007-latin1.xdy german/duden-latin1.xdy \
  icelandic/latin9.xdy icelandic/cp1252.xdy \
  italian/latin1.xdy \
  norwegian/latin1.xdy \
  portuguese/latin1.xdy \
  spanish/modern-latin1.xdy spanish/traditional-latin1.xdy \
  swedish/latin9.xdy swedish/cp1252.xdy \
  general/latin9.xdy general/cp1252.xdy

XDYSLATIN2= \
  croatian/latin2.xdy croatian/cp1250.xdy \
  czech/latin2.xdy czech/cp1250.xdy \
  hungarian/latin2.xdy hungarian/cp1250.xdy \
  lower-sorbian/latin2.xdy lower-sorbian/cp1250.xdy \
  polish/latin2.xdy polish/cp1250.xdy \
  romanian/latin2.xdy \
  slovenian/latin2.xdy slovenian/cp1250.xdy \
  slovak/small-latin2.xdy slovak/small-cp1250.xdy \
  slovak/large-latin2.xdy slovak/large-cp1250.xdy \
  upper-sorbian/latin2.xdy upper-sorbian/cp1250.xdy

XDYSLATIN3= \
  esperanto/latin3.xdy \
  turkish/latin3.xdy

XDYSLATIN4= \
  greek/translit-latin4.xdy \
  latvian/latin4.xdy \
  lithuanian/latin4.xdy \

XDYSLATIN5= \
  kurdish/bedirxan-latin5.xdy \
  kurdish/turkish-i-latin5.xdy \
  turkish/latin5.xdy

XDYSCYR= \
  belarusian/isoir111.xdy belarusian/iso88595.xdy belarusian/cp1251.xdy \
  bulgarian/koi8-r.xdy bulgarian/iso88595.xdy bulgarian/cp1251.xdy \
  macedonian/isoir111.xdy macedonian/iso88595.xdy macedonian/cp1251.xdy \
  russian/koi8-r.xdy russian/iso88595.xdy russian/cp1251.xdy \
  serbian/isoir111.xdy serbian/iso88595.xdy serbian/cp1251.xdy\
  ukrainian/koi8-u.xdy ukrainian/cp1251.xdy

XDYSOTHER= \
  general/cp850.xdy \
  greek/iso88597.xdy \
  hebrew/iso88598.xdy

XDYSUTF8= \
  albanian/utf8.xdy \
  belarusian/utf8.xdy \
  bulgarian/utf8.xdy \
  czech/utf8.xdy \
  croatian/utf8.xdy \
  danish/utf8.xdy \
  dutch/ij-as-ij-utf8.xdy \
  dutch/ij-as-y-utf8.xdy \
  english/utf8.xdy \
  esperanto/utf8.xdy \
  estonian/utf8.xdy \
  finnish/utf8.xdy \
  french/utf8.xdy \
  general/utf8.xdy \
  georgian/utf8.xdy \
  german/din5007-utf8.xdy german/duden-utf8.xdy german/braille-utf8.xdy \
  greek/translit-utf8.xdy \
  greek/utf8.xdy \
  greek/polytonic-utf8.xdy \
  gypsy/northrussian-utf8.xdy \
  hausa/utf8.xdy \
  hebrew/utf8.xdy \
  hungarian/utf8.xdy \
  icelandic/utf8.xdy \
  italian/utf8.xdy \
  klingon/utf8.xdy \
  kurdish/bedirxan-utf8.xdy \
  kurdish/turkish-i-utf8.xdy \
  latin/utf8.xdy \
  latvian/utf8.xdy \
  lithuanian/utf8.xdy \
  lower-sorbian/utf8.xdy \
  macedonian/utf8.xdy \
  mongolian/cyrillic-utf8.xdy \
  norwegian/utf8.xdy \
  polish/utf8.xdy \
  portuguese/utf8.xdy \
  romanian/utf8.xdy \
  russian/utf8.xdy \
  russian/translit-iso-utf8.xdy \
  serbian/utf8.xdy \
  slovak/small-utf8.xdy slovak/large-utf8.xdy \
  slovenian/utf8.xdy \
  spanish/modern-utf8.xdy spanish/traditional-utf8.xdy \
  swedish/utf8.xdy \
  turkish/utf8.xdy \
  upper-sorbian/utf8.xdy \
  ukrainian/utf8.xdy \
  vietnamese/utf8.xdy

XDYS= $(XDYSLATIN1) $(XDYSLATIN2) $(XDYSLATIN3) $(XDYSLATIN4) $(XDYSLATIN5) \
  $(XDYSCYR) $(XDYSOTHER)

INDS=$(XDYS:.xdy=.ind)
PLS=$(XDYS:.xdy=.pl)
INDUTF8S=$(XDYSUTF8:.xdy=.ind)
PLSUTF8=$(XDYSUTF8:.xdy=.pl)
CMPS=$(XDYS:.xdy=.ind.cmp)

all : $(XDYS)
utf8 : $(XDYSUTF8)
distrib : $(PLS) $(PLSUTF8)

DOCSLATIN1= \
  albanian/latin1-doc.tex \
  danish/cp1252-doc.tex \
  dutch/ij-as-ij-latin1-doc.tex \
  english/cp1252-doc.tex \
  esperanto/tex-doc.tex \
  estonian/cp1252-doc.tex \
  finnish/cp1252-doc.tex \
  french/cp1252-doc.tex \
  general/cp1252-doc.tex \
  german/din5007-latin1-doc.tex german/duden-latin1-doc.tex \
  greek/translit-latin4-doc.tex \
  icelandic/cp1252-doc.tex \
  italian/latin1-doc.tex \
  kurdish/bedirxan-tex-doc.tex \
  kurdish/turkish-i-tex-doc.tex \
  lithuanian/tex-doc.tex \
  norwegian/latin1-doc.tex \
  portuguese/latin1-doc.tex \
  romanian/tex-doc.tex \
  spanish/modern-latin1-doc.tex spanish/traditional-latin1-doc.tex \
  swedish/cp1252-doc.tex \
  turkish/tex-doc.tex
  
DOCSLATIN2= \
  croatian/latin2-doc.tex \
  czech/latin2-doc.tex \
  hungarian/latin2-doc.tex \
  lower-sorbian/latin2-doc.tex \
  polish/latin2-doc.tex \
  slovak/small-latin2-doc.tex slovak/large-latin2-doc.tex \
  slovenian/latin2-doc.tex \
  upper-sorbian/latin2-doc.tex

DOCSLATIN3=

DOCSCYR= \
  belarusian/cp1251-doc.tex \
  bulgarian/cp1251-doc.tex \
  macedonian/cp1251-doc.tex \
  russian/cp1251-doc.tex \
  serbian/cp1251-doc.tex \
  ukrainian/cp1251-doc.tex

DOCSOTHER= \
  greek/iso88597-doc.tex \
  klingon/tex-doc.tex

DOCS= $(DOCSLATIN1) $(DOCSLATIN2) $(DOCSLATIN5) \
  $(DOCSCYR) $(DOCSOTHER)

DOCSUTF8LAT= \
  albanian/utf8-doc.tex \
  croatian/utf8-kl-doc.tex \
  czech/utf8-doc.tex \
  danish/utf8-doc.tex \
  dutch/ij-as-ij-utf8-doc.tex \
  dutch/ij-as-y-utf8-doc.tex \
  english/utf8-doc.tex \
  esperanto/utf8-doc.tex \
  estonian/utf8-doc.tex \
  finnish/utf8-doc.tex \
  french/utf8-doc.tex \
  general/utf8-doc.tex \
  german/din5007-utf8-doc.tex german/duden-utf8-doc.tex \
  greek/translit-utf8-doc.tex \
  gypsy/northrussian-utf8-doc.tex \
  hausa/utf8-doc.tex \
  hungarian/utf8-doc.tex \
  icelandic/utf8-doc.tex \
  italian/utf8-doc.tex \
  kurdish/bedirxan-utf8-doc.tex \
  kurdish/turkish-i-utf8-doc.tex \
  latin/utf8-doc.tex \
  latvian/utf8-doc.tex \
  lithuanian/utf8-doc.tex \
  lower-sorbian/utf8-doc.tex \
  norwegian/utf8-doc.tex \
  polish/utf8-doc.tex \
  portuguese/utf8-doc.tex \
  romanian/utf8-kl-doc.tex \
  russian/translit-iso-utf8-doc.tex \
  slovak/small-utf8-doc.tex slovak/large-utf8-doc.tex \
  slovenian/utf8-doc.tex \
  spanish/modern-utf8-doc.tex spanish/traditional-utf8-doc.tex \
  swedish/utf8-doc.tex \
  turkish/utf8-doc.tex \
  upper-sorbian/utf8-doc.tex \
  vietnamese/utf8-doc.tex
  
DOCSUTF8CYR= \
  belarusian/utf8-doc.tex \
  bulgarian/utf8-doc.tex \
  macedonian/utf8-doc.tex \
  mongolian/cyrillic-utf8-doc.tex \
  russian/utf8-doc.tex \
  serbian/utf8-doc.tex \
  ukrainian/utf8-doc.tex

DOCSUTF8OTHER= \
  greek/utf8-doc.tex \
  greek/polytonic-utf8-doc.tex \
  hebrew/utf8-doc.tex \
  klingon/tex-doc.tex
#  georgian/tex-doc.tex \
#  german/braille-utf8-doc.tex \

DOCSUTF8= $(DOCSUTF8LAT) $(DOCSUTF8CYR) $(DOCSUTF8OTHER)

alphabets-inc.tex : $(DOCS)
	$(RM) $@
	echo "\section{Latin scripts}" >>$@
	for i in $(DOCSLATIN1); do echo "\input{$$i}" >>$@; done
	echo "\ienc{latin2}" >>$@
	for i in $(DOCSLATIN2); do echo "\input{$$i}" >>$@; done
#	echo "\ienc{latin5}" >>$@
#	for i in $(DOCSLATIN5); do echo "\input{$$i}" >>$@; done
	echo "\ienc{cp1251}" >>$@
	echo "\fenc{T2A}" >>$@
	echo "\section{Cyrillic scripts}" >>$@
	for i in $(DOCSCYR); do echo "\input{$$i}" >>$@; done
	echo "\ienc{iso-8859-7}" >>$@
	echo "\fenc{LGR}" >>$@
	echo "\section{Other scripts}" >>$@
	for i in $(DOCSOTHER); do echo "\input{$$i}" >>$@; done

alphabets-inc-lambda.tex : $(DOCSUTF8)
	$(RM) $@
	echo "\section{Latin scripts}" >>$@
	for i in $(DOCSUTF8LAT); do echo "\input{$$i}" >>$@; done
	echo "\section{Cyrillic scripts}" >>$@
	for i in $(DOCSUTF8CYR); do echo "\input{$$i}" >>$@; done
	echo "\section{Other scripts}" >>$@
	for i in $(DOCSUTF8OTHER); do echo "\input{$$i}" >>$@; done

alphabets-doc.dvi : alphabets-doc.tex alphabets-inc.tex
	latex alphabets-doc.tex
	latex alphabets-doc.tex

alphabets-doc.pdf : alphabets-doc.tex alphabets-inc.tex
	pdflatex alphabets-doc.tex
	pdflatex alphabets-doc.tex

alphabets-doc-lambda.dvi : alphabets-doc-lambda.tex alphabets-inc-lambda.tex
	lambda alphabets-doc-lambda.tex
	lambda alphabets-doc-lambda.tex

alphabets-doc-lambda.ps : alphabets-doc-lambda.dvi
	odvips $<

alphabets-doc-lambda.pdf : alphabets-doc-lambda.ps
	ps2pdf $<

test : $(INDS)

testutf8 : $(INDUTF8S)

%.ps : %.dvi
	dvips $<

%.xdy %-doc.tex %-test.xdy %.raw : %.pl
	perl $< $*

%.ind %.xlg : %.raw %-test.xdy
	xindy -l $*.xlg -L 1 $*-test.xdy $<

newcmp : $(CMPS)

%.cmp : %
	cp $< $@

#%-test.xdy :
#	echo '(require "lang/$*.xdy")' >$@
#	cat test.xdy >>$@

%utf8.pl : %utf8.pl.in
	sed -e 's/@.{\([^}]*\)}/\1/g;' <$< >$@

%latin1.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=LATIN1 >$@

%cp850.pl : %utf8.pl.in
	sed -e 's/@.{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=CP850 >$@

romanian/latin2.pl : romanian/utf8.pl
	sed -e 's/@u{\([^}]*\)}//g;' -f rom-comma-kludge.sed <$< | \
	iconv --from-code=UTF-8 --to-code=LATIN2 >$@

%latin2.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=LATIN2 >$@

%latin3.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=LATIN3 >$@

%latin4.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=LATIN4 >$@

%iso88595.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=ISO-8859-5 >$@

%iso88597.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=ISO-8859-7 >$@

%iso88598.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=ISO-8859-8 >$@

%latin5.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=LATIN5 >$@

%latin9.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;s/@9{\([^}]*\)}/\1/g;' <$< | \
	iconv --from-code=UTF-8 --to-code=ISO-8859-15 >$@

romanian/cp1250.pl : romanian/utf8.pl
	sed -e 's/@u{\([^}]*\)}//g;' -f rom-comma-kludge.sed <$< | \
	iconv --from-code=UTF-8 --to-code=CP1250 >$@

%cp1250.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=CP1250 >$@

%cp1251.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=CP1251 >$@

%cp1252.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;s/@9{\([^}]*\)}/\1/g;' <$< | \
	iconv --from-code=UTF-8 --to-code=CP1252 >$@

%isoir111.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=ISO-IR-111 >$@

%koi8-r.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=KOI8-R >$@

%koi8-u.pl : %utf8.pl.in
	sed -e 's/@u{\([^}]*\)}//g;' <$< | \
	iconv --from-code=UTF-8 --to-code=KOI8-U >$@

%utf8-kl-doc.tex : %utf8-doc.tex
	sed -f utf8-omega-kludge.sed <$< >$@

# %tex.pl : %utf8.pl utf8-to-tex.sed
#	sed -f utf8-to-tex.sed <$< >$@

install : all
	mkdir -p $(INSTDIR)
	cp -P */*.xdy $(INSTDIR)

clean :
	$(RM) $(XDYS) $(XDYSUTF8) *~ */*~ *.aux *.dvi *.toc *.log *.ps \
	  alphabets-inc.tex */*-doc.tex */*.raw */*.xlg */*.ind */*-test.xdy
#	  */*cp1250.pl */*cp1251.pl */*cp1252.pl */*iso88595.pl \
#	  */*utf8.pl

realclean : clean
	$(RM) */*.ind.cmp
