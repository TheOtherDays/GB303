#!/bin/sh

set -e
rm -f main.gb
rm -f main.o

wla-gb -ox main.s main.o

echo [objects]>linkfile
echo main.o>>linkfile

wlalink -vs linkfile main.gb
