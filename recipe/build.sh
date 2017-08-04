#! /bin/bash

export PATH=/usr/bin:/bin:/usr/sbin:/etc:/usr/lib:$PREFIX/bin

export CC=$(which gcc)
export CXX=$(which g++)

# export CFLAGS="-fPIC $CFLAGS"
# export CXXFLAGS="-fPIC $CXXFLAGS"

CONFIGURE_FLAGS= \
  --prefix=$PREFIX \
  --with-freetype \
  --with-freetype-includes=$PREFIX/include/freetype2 \
  --with-freetype-libs=$PREFIX/lib \
  --with-gdal=$PREFIX/bin/gdal-config \
  --with-gdal-libs=$PREFIX/lib \
  --with-proj=$PREFIX/bin/proj \
  --with-proj-includes=$PREFIX/include \
  --with-proj-libs=$PREFIX/lib \
  --with-proj-share=$PREFIX/share/proj \
  --with-geos=$PREFIX/bin/geos-config \
  --with-jpeg-includes=$PREFIX/include \
  --with-jpeg-libs=/$PREFIX/lib \
  --with-png-includes=$PREFIX/include \
  --with-png-libs=$PREFIX/lib \
  --with-tiff-includes=$PREFIX/include \
  --with-tiff-libs=$PREFIX/lib \
  --without-postgres \
  --without-mysql \
  --with-sqlite \
  --with-sqlite-libs=$PREFIX/lib \
  --with-sqlite-includes=$PREFIX/include \
  --with-fftw-includes=$PREFIX/include \
  --with-fftw-libs=$PREFIX/lib \
  --with-cxx \
  --without-readline \
  --enable-64bit \
  --with-cairo \
  --with-cairo-includes=$PREFIX/include/cairo \
  --with-cairo-libs=$PREFIX/lib \
  --with-cairo-ldflags="-lcairo" \
  --with-libs=$PREFIX/lib \
  --with-includes=$PREFIX/include

if [ $(uname) == Darwin ]; then
  CONFIGURE_FLAGS=\
    $CONFIGURE_FLAGS \
    --with-opengl=aqua \
    --enable-macosx-app \
    --with-opencl
#  --with-macosx-sdk=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
fi

mkdir -p $PREFIX
./configure $CONFIGURE_FLAGS

# --with-macosx-sdk=/Developer/SDKs/MacOSX10.8.sdk
# --with-liblas="/Users/cmbarton/grass\_source/LAS/lasdist/bin/liblas-config"
# --with-opencl

make GDAL_DYNAMIC=

# make bindist
