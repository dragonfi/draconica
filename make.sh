#!/bin/sh

set -x

rm -r target
mkdir -p target

elm make --output target/draconica.html src/Draconica.elm
elm make --output target/itemshop.html src/ItemShop.elm

cp static/* target/
