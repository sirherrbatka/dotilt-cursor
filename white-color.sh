#!/usr/bin/env sh

sed -e "s/#0200f1/#ffffff/g ; s/#f10000/#000000/g" $1 > $2
