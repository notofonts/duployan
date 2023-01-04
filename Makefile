FAMILY=$(shell python3 scripts/read-config.py --family )

STYLES = Regular Bold
FONT_FAMILY_NAME = NotoSansDuployan
VERSION = 3.001
RELEASE = --release
CHECK_ARGS = --incomplete
override NOTO = --noto
SUFFIXES = otf ttf
FONTS = $(foreach suffix,$(SUFFIXES),$(addprefix fonts/$(suffix)/unhinted/instance_$(suffix)/$(FONT_FAMILY_NAME)-,$(addsuffix .$(suffix),$(STYLES))))


help:
	@echo "###"
	@echo "# Build targets for $(FAMILY)"
	@echo "###"
	@echo
	@echo "  make build:  Builds the fonts and places them in the fonts/ directory"
	@echo "  make test:   Tests the fonts with fontbakery"
	@echo "  make proof:  Creates HTML proof documents in the proof/ directory"
	@echo "  make images: Creates PNG specimen images in the documentation/ directory"
	@echo


venv: venv/touchfile

.PHONY: build
build: venv .init.stamp sources/config*.yaml $(FONTS)


fonts/otf/unhinted/instance_otf/$(FONT_FAMILY_NAME)-Regular.otf: sources/Duployan.fea sources/*.py
	. venv/bin/activate ; python sources/build.py --fea $< $(NOTO) --output $@ $(RELEASE) --version $(VERSION)

fonts/otf/unhinted/instance_otf/$(FONT_FAMILY_NAME)-Bold.otf: sources/Duployan.fea sources/*.py
	. venv/bin/activate ; python sources/build.py --bold --fea $< $(NOTO) --output $@ $(RELEASE) --version $(VERSION)

$(addprefix fonts/ttf/unhinted/instance_ttf/$(FONT_FAMILY_NAME)-,$(addsuffix .ttf,$(STYLES))): fonts/ttf/unhinted/instance_ttf/%.ttf: fonts/otf/unhinted/instance_otf/%.otf
	mkdir -p "$$(dirname "$@")"
	otf2ttf --output "$@" --overwrite "$<"

.init.stamp: venv
	. venv/bin/activate; python3 scripts/first-run.py

venv/touchfile: requirements.txt
	test -d venv || python3 -m venv venv
	. venv/bin/activate; pip install -Ur requirements.txt
	touch venv/touchfile

test: venv build.stamp
	. venv/bin/activate; python3 -m notoqa

proof: venv build.stamp
	. venv/bin/activate; mkdir -p out/ out/proof; gftools gen-html proof $(shell find fonts/*/unhinted/ttf -type f) -o out/proof

%.png: %.py build.stamp
	python3 $< --output $@

clean:
	rm -rf venv
	find . -name "*.pyc" | xargs rm delete

update-ufr:
	npx update-template https://github.com/notofonts/noto-project-template/

update:
	pip install --upgrade $(dependency)

manual_release: build.stamp
	@echo "Creating release files manually is contraindicated."
	@echo "Please use the CI for releases instead."
	cd fonts; for family in *; do VERSION=`font-v report $$family/unhinted/ttf/* | grep Version | sort -u  | awk '{print $$2}'`; zip -r ../$$family-v$$VERSION.zip $$family; done

