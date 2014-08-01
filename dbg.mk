OBJCOPY = objcopy
TOUCH = touch

%.dbg: %
	$(OBJCOPY) --only-keep-debug $< $@
	$(OBJCOPY) --add-gnu-debuglink=$@ $<
	$(OBJCOPY) --strip-debug $<
	# change file timestamps to avoid rerun
	$(TOUCH) --reference=$< $@
