%.ind : example.raw %.xdy
	xindy -o $*.ind -l $*.xlg -L 3 $*.xdy example.raw

clean :
	$(RM) *.xlg *.ind *~
