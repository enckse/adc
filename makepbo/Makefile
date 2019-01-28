SOURCE   :=
DEST     := depbo
DEST_BIN := $(DEST)/bin/
DEST_LIB := $(DEST)/lib/

all:
	rm -rf $(DEST)
	mkdir -p $(DEST)
	tar xf "$(SOURCE)" -C $(DEST) --strip-components=1
	sudo apt-get install liblzo2-2 libvorbis0a libvorbisfile3 libvorbisenc2 libogg0
	for f in $(shell ls $(DEST_LIB)); do sudo install -Dm 755 $(DEST_LIB)$$f /lib/x86_64-linux-gnu/; done
	for f in $(shell ls $(DEST_BIN)); do sudo install -Dm 755 $(DEST_BIN)$$f /usr/bin/; done
