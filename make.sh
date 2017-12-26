#!/bin/sh

set -x

mkdir -p public

elm make --yes --output public/draconica.js src/Draconica.elm
elm make --yes --output public/itemshop.js src/ItemShop.elm

cp static/* public/
