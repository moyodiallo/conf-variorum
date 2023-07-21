#!/bin/sh
PREFIX=`opam var prefix`
HWLOC=`pkg-config --variable prefix hwloc`
JANSSON=`pkg-config --variable prefix jansson`
mkdir build
cd build/
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX \
         -DENABLE_FORTRAN=OFF        \
         -DBUILD_TESTS=OFF           \
         -DBUILD_DOCS=OFF            \
         -DVARIORUM_LOG=OFF          \
         -DBUILD_SHARED_LIBS=ON      \
	 -DHWLOC_DIR=$HWLOC          \
         -DJANSSON_DIR=$JANSSON      \
	 ../variorum/src
make
