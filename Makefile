DEST=~/cs452/lib

UNAME = $(shell uname)
ifeq ($(UNAME),Darwin)
PLATFORM = macos
else ifeq ($(UNAME),Linux)
PLATFORM = linux
else
$(error Unsupported platform $(UNAME))
endif

install::
	install -d $(PLATFORM)/* $(DEST)
