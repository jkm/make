PWD := $(dir $(lastword $(MAKEFILE_LIST)))
include $(PWD)/variables.mk

ifeq ($(OS), Windows)
	EXECUTABLE_EXT := .exe
	STATIC_LIBRARY_EXT := .lib
	SHARED_LIBRARY_EXT := .dll
endif

ifeq ($(OS), Linux)
	EXECUTABLE_EXT :=
	STATIC_LIBRARY_EXT := .a
	SHARED_LIBRARY_EXT := .so
endif
