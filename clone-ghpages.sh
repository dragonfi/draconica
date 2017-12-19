#!/bin/sh

set -x

mkdir -p target
cd target

git clone git@github.com:dragonfi/draconica.git .
git checkout gh-pages
git pull
