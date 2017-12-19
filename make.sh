#!/bin/sh

set -x

mkdir -p target

elm make --yes --output target/draconica.html src/Draconica.elm
elm make --yes --output target/itemshop.html src/ItemShop.elm

cp static/* target/
