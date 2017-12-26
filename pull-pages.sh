#!/bin/sh

set -x

mkdir -p public
cd public

git clone git@github.com:dragonfi/draconica.git .
git checkout gh-pages
git pull
