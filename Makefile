TARGETS=itemshop.html draconica.html

.PHONY: all $(TARGETS)
all: $(TARGETS)

draconica.html: src/Draconica.elm
itemshop.html: src/ItemShop.elm

$(TARGETS):
	elm make --output $@ $<
