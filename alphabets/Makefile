# $Id$

ifdef MODDIR
INSTDIR=${MODDIR}/lang
else
INSTDIR=/usr/local/lib/xindy/modules/lang
endif

XDYSLATIN1= \
  albanian/latin1.xdy \
  danish/latin1.xdy \
  english/ascii.xdy \
  finnish/latin9.xdy finnish/cp1252.xdy \
  french/latin9.xdy french/cp1252.xdy \
  german/din5007-latin1.xdy german/duden-latin1.xdy \
  greek/translit-tex.xdy \
  icelandic/latin1.xdy \
  norwegian/latin1.xdy \
  portuguese/latin1.xdy \
  russian/translit-iso-tex.xdy \
  spanish/modern-latin1.xdy spanish/traditional-latin1.xdy \
  swedish/latin1.xdy \
  general/latin1.xdy

XDYSLATIN2= \
  croatian/latin2.xdy croatian/cp1250.xdy \
  czech/latin2.xdy czech/cp1250.xdy \
  hungarian/latin2.xdy hungarian/cp1250.xdy \
  lower-sorbian/latin2.xdy lower-sorbian/cp1250.xdy \
  polish/latin2.xdy polish/cp1250.xdy \
  romanian/latin2.xdy \
  slovenian/latin2.xdy slovenian/cp1250.xdy \
  slovak/small-latin2.xdy slovak/small-cp1250.xdy \
  slovak/large-latin2.xdy slovak/large-cp1250.xdy

XDYSLATIN3= \
  esperanto/latin3.xdy \

XDYSLATIN5= \
  turkish/latin5.xdy

XDYSCYR= \
  belarusian/isoir111.xdy belarusian/iso88595.xdy belarusian/cp1251.xdy \
  bulgarian/koi8-r.xdy bulgarian/iso88595.xdy bulgarian/cp1251.xdy \
  macedonian/isoir111.xdy macedonian/iso88595.xdy macedonian/cp1251.xdy \
  russian/koi8-r.xdy russian/iso88595.xdy russian/cp1251.xdy \
  serbian/isoir111.xdy serbian/iso88595.xdy serbian/cp1251.xdy\
  ukrainian/koi8-u.xdy ukrainian/cp1251.xdy

XDYSOTHER= \
  greek/iso88597.xdy

XDYSUTF8= \
  albanian/utf8.xdy \
  belarusian/utf8.xdy \
  bulgarian/utf8.xdy \
  croatian/utf8.xdy \
  czech/utf8.xdy \
  danish/utf8.xdy \
  english/utf8.xdy \
  esperanto/utf8.xdy \
  finnish/utf8.xdy \
  french/utf8.xdy \
  general/utf8.xdy \
  german/din5007-utf8.xdy german/duden-utf8.xdy \
  greek/translit-utf8.xdy \
  greek/utf8.xdy \
  hungarian/utf8.xdy \
  icelandic/utf8.xdy \
  lower-sorbian/utf8.xdy \
  macedonian/utf8.xdy \
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
  ukrainian/utf8.xdy

XDYS= $(XDYSLATIN1) $(XDYSLATIN2) $(XDYSLATIN3) $(XDYSLATIN5) \
  $(XDYSCYR) $(XDYSOTHER)

INDS=$(XDYS:.xdy=.ind)
INDUTF8S=$(XDYSUTF8:.xdy=.ind)
CMPS=$(XDYS:.xdy=.ind.cmp)

all : $(XDYS)
utf8 : $(XDYSUTF8)

DOCSLATIN1= \
  albanian/latin1-doc.tex \
  danish/latin1-doc.tex \
  english/ascii-doc.tex \
  esperanto/tex-doc.tex \
  finnish/cp1252-doc.tex \
  french/cp1252-doc.tex \
  general/latin1-doc.tex \
  german/din5007-tex-doc.tex german/duden-tex-doc.tex \
  greek/translit-tex-doc.tex \
  icelandic/latin1-doc.tex \
  norwegian/latin1-doc.tex \
  portuguese/latin1-doc.tex \
  romanian/tex-doc.tex \
  russian/translit-iso-tex-doc.tex \
  spanish/modern-latin1-doc.tex spanish/traditional-latin1-doc.tex \
  swedish/latin1-doc.tex \
  turkish/tex-doc.tex \

DOCSLATIN2= \
  croatian/latin2-doc.tex \
  czech/latin2-doc.tex \
  hungarian/latin2-doc.tex \
  lower-sorbian/latin2-doc.tex \
  polish/latin2-doc.tex \
#  romanian/latin2-doc.tex \
  slovak/small-latin2-doc.tex slovak/large-latin2-doc.tex \
  slovenian/latin2-doc.tex

DOCSLATIN3=

DOCSCYR= \
  belarusian/cp1251-doc.tex \
  bulgarian/cp1251-doc.tex \
  macedonian/cp1251-doc.tex \
  russian/cp1251-doc.tex \
  serbian/cp1251-doc.tex\
  ukrainian/cp1251-doc.tex

DOCSOTHER= \
  greek/iso88597-doc.tex

DOCS= $(DOCSLATIN1) $(DOCSLATIN2) $(DOCSLATIN5) \
  $(DOCSCYR) $(DOCSOTHER)

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

alphabets-doc.dvi : alphabets-doc.tex alphabets-inc.tex
	latex alphabets-doc.tex
	latex alphabets-doc.tex

alphabets-doc.pdf : alphabets-doc.tex alphabets-inc.tex
	pdflatex alphabets-doc.tex
	pdflatex alphabets-doc.tex

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

%cp1250.pl : %latin2.pl
	recode latin2..cp1250 <$< >$@
	
%iso88595.pl : %isoir111.pl
	recode iso-ir-111..iso-8859-5 <$< >$@
	
%iso88595.pl : %koi8-r.pl
	recode koi8-r..iso-8859-5 <$< >$@
	
%cp1251.pl : %koi8-r.pl
	recode koi8-r..cp1251 <$< >$@
	
%cp1251.pl : %koi8-u.pl
	recode koi8-ru..cp1251 <$< >$@
	
%cp1251.pl : %isoir111.pl
	recode iso-ir-111..cp1251 <$< >$@
	
%cp1252.pl : %latin9.pl
	recode latin9..cp1252 <$< >$@

%utf8.pl : %ascii.pl
	recode ascii..utf-8 <$< >$@

%utf8.pl : %latin1.pl
	recode latin1..utf-8 <$< >$@

romanian/utf8.pl : romanian/latin2.pl
	recode latin2..utf8 <$< | sed -f rom-comma-kludge.sed >$@

%utf8.pl : %latin2.pl
	recode latin2..utf-8 <$< >$@

%utf8.pl : %latin3.pl
	recode latin3..utf-8 <$< >$@

%utf8.pl : %latin5.pl
	recode latin5..utf-8 <$< >$@

%utf8.pl : %latin9.pl
	recode latin9..utf-8 <$< >$@

%utf8.pl : %koi8-r.pl
	recode koi8-r..utf-8 <$< >$@

%utf8.pl : %koi8-u.pl
	recode koi8-ru..utf-8 <$< >$@
	
%utf8.pl : %isoir111.pl
	recode iso-ir-111..utf-8 <$< >$@

%utf8.pl : %iso88597.pl
	recode iso-8859-7..utf-8 <$< >$@

%tex.pl : %utf8.pl utf8-to-tex.sed
	sed -f utf8-to-tex.sed <$< >$@

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
