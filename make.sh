#!/bin/sh

set -x

mkdir -p target

elm make --yes --output target/draconica.js src/Draconica.elm
elm make --yes --output target/itemshop.js src/ItemShop.elm

cp static/* target/
