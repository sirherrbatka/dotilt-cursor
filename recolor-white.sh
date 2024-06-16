#!/usr/bin/env sh

mkdir ./svg
find ./raw-svg/ -name "*.svg" | parallel ./white-color.sh {} svg/{/}
