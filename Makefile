CC = gcc
CFLAGS = -g -Wall
LIBS = -L/usr/X11R6/lib -lX11
TARGET = zoomx
SRC = zoomx.c
CONFIG = config.h

PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

all: $(TARGET)

$(TARGET): $(SRC) $(CONFIG)
	$(CC) $(CFLAGS) $(SRC) $(LIBS) -o $(TARGET)

$(CONFIG): config.def.h
	cp config.def.h $(CONFIG)

clean:
	rm -f $(TARGET) $(CONFIG)

clean-bin:
	rm -f $(TARGET)

install: $(TARGET)
	install -d $(BINDIR)
	install -m 755 $(TARGET) $(BINDIR)/$(TARGET)

uninstall:
	rm -f $(BINDIR)/$(TARGET)

.PHONY: all clean clean-bin install uninstall
