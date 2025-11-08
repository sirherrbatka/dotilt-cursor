#!/usr/bin/env sh

sed -e "s/#0200f1/#ffffff/g ; s/#f10000/#000000/g ; s/#f57900/#ff974d/g" $1 > $2
