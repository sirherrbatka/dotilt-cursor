#!/usr/bin/env sh

sed -e "s/#0200f1/#000000/g ; s/#f10000/#ffffff/g" $1 > $2
