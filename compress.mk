%.gz: %
	$(CP) $^ tmp_$^
	gzip $^
	$(MV) tmp_$^ $^

%.bz2: %
	$(CP) $^ tmp_$^
	bzip2 $^
	$(MV) tmp_$^ $^

%.xz: %
	$(CP) $^ tmp_$^
	xz $^
	$(MV) tmp_$^ $^
