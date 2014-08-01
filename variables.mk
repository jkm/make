PWD := $(dir $(lastword $(MAKEFILE_LIST)))
include $(PWD)/os.mk

# default
# works in Linux, Mac OSX, etc.
RMALL := $(RM)r
MV := mv
MKDIR := mkdir -p
CP := cp -a

ifeq ($(OS), Windows)
	RMALL := rmdir /s /q
	MV := move
	MKDIR := mkdir
	CP := copy
endif
