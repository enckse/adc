ADDONS="addons/"
PBO="aar_main.pbo"
BIN="bin/"
EXTENSION_NAME="adc_extension.so"
EXTENSION="armq/bin/"$(EXTENSION_NAME)
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
	cp $(EXTENSION) $(EXTENSION_NAME)
	tar cvf $(BIN)build.tar.gz $(EXTENSION_NAME) logo_aar_ca.paa mod.cpp $(ADDONS)$(PBO)
