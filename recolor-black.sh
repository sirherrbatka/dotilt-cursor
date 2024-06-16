#!/usr/bin/env sh

mkdir ./svg
find ./raw-svg/ -name "*.svg" | parallel ./black-color.sh {} svg/{/}
