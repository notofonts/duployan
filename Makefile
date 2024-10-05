WEIGHTS = Regular Bold
ifdef UNJOINED
    override UNJOINED = --unjoined
endif
FONT_FAMILY_NAME = Noto Sans Duployan$(if $(UNJOINED), Unjoined)
CHARSET = noto
VERSION = 3.002
RELEASE = --release
override NOTO = --noto
unexport CHARSET
SUFFIXES = otf ttf

CHECK_ARGS = $(if $(filter testing,$(CHARSET)),,--incomplete)
FONT_FILE_NAME = $(subst $(eval ) ,,$(FONT_FAMILY_NAME))

FONTS = \
	fonts/$(FONT_FILE_NAME)/unhinted/otf/$(FONT_FILE_NAME)-Regular.otf \
	fonts/$(FONT_FILE_NAME)/unhinted/otf/$(FONT_FILE_NAME)-Bold.otf \
	fonts/$(FONT_FILE_NAME)/unhinted/ttf/$(FONT_FILE_NAME)-Regular.ttf \
	fonts/$(FONT_FILE_NAME)/unhinted/ttf/$(FONT_FILE_NAME)-Bold.ttf \
	fonts/$(FONT_FILE_NAME)/hinted/otf/$(FONT_FILE_NAME)-Regular.otf \
	fonts/$(FONT_FILE_NAME)/hinted/otf/$(FONT_FILE_NAME)-Bold.otf \
	fonts/$(FONT_FILE_NAME)/hinted/ttf/$(FONT_FILE_NAME)-Regular.ttf \
	fonts/$(FONT_FILE_NAME)/hinted/ttf/$(FONT_FILE_NAME)-Bold.ttf \
	fonts/$(FONT_FILE_NAME)/googlefonts/ttf/$(FONT_FILE_NAME)-Regular.ttf \
	fonts/$(FONT_FILE_NAME)/googlefonts/ttf/$(FONT_FILE_NAME)-Bold.ttf \


help:
	@echo "###"
	@echo "# Build targets for $(FONT_FAMILY_NAME)"
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


fonts/$(FONT_FILE_NAME)/unhinted/otf/$(FONT_FILE_NAME)-Regular.otf: sources/metadata.fea $(shell find sources -name '*.py') venv
	. venv/bin/activate ; python sources/build.py --charset $(CHARSET) --fea $< --name '$(FONT_FAMILY_NAME)' $(NOTO) --output $@ $(RELEASE) $(UNJOINED) --version $(VERSION)

fonts/$(FONT_FILE_NAME)/unhinted/otf/$(FONT_FILE_NAME)-Bold.otf: sources/metadata.fea $(shell find sources -name '*.py') venv
	. venv/bin/activate ; python sources/build.py --bold --charset $(CHARSET) --fea $< --name '$(FONT_FAMILY_NAME)' $(NOTO) --output $@ $(RELEASE) $(UNJOINED) --version $(VERSION)

$(addprefix fonts/$(FONT_FILE_NAME)/unhinted/ttf/$(FONT_FILE_NAME)-,$(addsuffix .ttf,$(WEIGHTS))): fonts/$(FONT_FILE_NAME)/unhinted/ttf/%.ttf: fonts/$(FONT_FILE_NAME)/unhinted/otf/%.otf venv
	mkdir -p "$$(dirname "$@")"
	. venv/bin/activate ; python sources/otf2ttf.py --output "$@" --overwrite "$<"

$(addprefix fonts/$(FONT_FILE_NAME)/hinted/ttf/$(FONT_FILE_NAME)-,$(addsuffix .ttf,$(WEIGHTS))): fonts/$(FONT_FILE_NAME)/hinted/ttf/%.ttf: fonts/$(FONT_FILE_NAME)/unhinted/otf/%.otf venv
	mkdir -p "$$(dirname "$@")"
	cp $< $@

$(addprefix fonts/$(FONT_FILE_NAME)/hinted/otf/$(FONT_FILE_NAME)-,$(addsuffix .otf,$(WEIGHTS))): fonts/$(FONT_FILE_NAME)/hinted/otf/%.otf: fonts/$(FONT_FILE_NAME)/unhinted/otf/%.otf venv
	mkdir -p "$$(dirname "$@")"
	cp $< $@

$(addprefix fonts/$(FONT_FILE_NAME)/googlefonts/ttf/$(FONT_FILE_NAME)-,$(addsuffix .ttf,$(WEIGHTS))): fonts/$(FONT_FILE_NAME)/googlefonts/ttf/%.ttf: fonts/$(FONT_FILE_NAME)/unhinted/ttf/%.ttf venv
	mkdir -p "$$(dirname "$@")"
	. venv/bin/activate ; python3 scripts/hotfix.py -o $@ $<
	. venv/bin/activate ; gftools-fix-font $@ -o $@

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

manual_release: build.stamp
	@echo "Creating release files manually is contraindicated."
	@echo "Please use the CI for releases instead."
	cd fonts; for family in *; do VERSION=`font-v report $$family/unhinted/ttf/* | grep Version | sort -u  | awk '{print $$2}'`; zip -r ../$$family-v$$VERSION.zip $$family; done

