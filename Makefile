ADDONS="addons/"
all: clean build

clean:
	rm -f $(ADDONS)aar_main.pbo

build:
	cd $(ADDONS) && makepbo -NUP -@=z\aar\addons\main main aar_main.pbo
