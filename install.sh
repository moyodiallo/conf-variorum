#!/bin/sh
PREFIX=`opam var prefix`
cd build
make install
cp config/variorum.pc $PREFIX/lib/pkgconfig/variorum.pc
