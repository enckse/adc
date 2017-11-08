ADDONS="addons/"
PBO="aar_main.pbo"
all: clean build

clean:
	rm -f $(ADDONS)$(PBO)

build:
	cd $(ADDONS) && makepbo -NUP -@=z\aar\addons\main main $(PBO)
