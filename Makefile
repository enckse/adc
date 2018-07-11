ADDONS	   := addons/
PBO        := aar_main.pbo
BIN        := bin/

all: clean dependencies build pack

dependencies:
	git submodule update --init

clean:
	rm -f $(ADDONS)$(PBO)
	rm -rf $(BIN)
	rm -f $(EXTENSION_NAME)

build:
	cd $(ADDONS) && makepbo -NUP -@=z\aar\addons\main main $(PBO)
	cd armq && make

pack:
	mkdir -p $(BIN)
	cp armq/bin/*.so .
	tar cvf $(BIN)build.tar.gz *.so  logo_aar_ca.paa mod.cpp $(ADDONS)$(PBO)
