CC = gcc
CFLAGS = -g
LIBS = -L/usr/X11R6/lib -lX11
TARGET = zoomx
SRC = zoomx.c

PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) $(LIBS) -o $(TARGET)

clean:
	rm -f $(TARGET)

install: $(TARGET)
	install -d $(BINDIR)
	install -m 755 $(TARGET) $(BINDIR)/$(TARGET)

uninstall:
	rm -f $(BINDIR)/$(TARGET)

.PHONY: all clean install uninstall
