example.ind : example.raw example.xdy
	xindy -l example.xlg -L 3 example.xdy example.raw

clean :
	$(RM) *.xlg *.ind *~
