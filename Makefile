
.PHONY: all

all: draconica.html

draconica.html: src/Draconica.elm
	elm make --output $@ $<
