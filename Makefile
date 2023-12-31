.PHONY: setup update cv watch all

# Installation and Setup
setup:
	git init && git submodule init && git submodule add https://github.com/jskherman/cv.typ template && git submodule update --recursive

update:
	git pull --recurse-submodules && git submodule update --recursive && git pull


# Typst commands
cv:
	typst compile --root . cv.typ cv.pdf
	
watch:
	typst watch --root . cv.typ cv.pdf

TYP_FILES = $(wildcard *.typ)

%.compiled: %.typ
	typst compile --root . $< $(notdir $(basename $<)).pdf

all: $(TYP_FILES:.typ=.compiled)
