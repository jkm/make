ifdef SystemRoot
	OS := Windows
else
	OS := $(shell uname --kernel-name)
endif

ifneq ($(OS), Windows)
	ARCH := $(shell uname --machine)
endif
