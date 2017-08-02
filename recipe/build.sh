#! /bin/bash

./configure \
  --with-proj \
  --with-proj-includes=$PREFIX/include \
  --with-proj-libs=$PREFIX/lib \
  --with-proj-share=$PREFIX/share \
  --with-tiff-includes=$PREFIX/include \
  --with-tiff-libs=$PREFIX/lib \
  --with-freetype \
  --with-freetype-includes="$PREFIX/include/freetype2 $PREFIX/include" \
  --with-freetype-libs=$PREFIX/lib \
  --with-gdal=$PREFIX/bin/gdal-config \
  --with-geos=$PREFIX/bin/geos-config \
  --with-cairo \
  --without-postgres \
  --without-mysql \
  --with-sqlite \
  --with-x \
  --with-cxx \
  --with-opengl=aqua \
  --without-readline \
  --prefix=$PREFIX \
  --enable-macosx-app \
  --with-python \
  --with-wxwidgets=$PREFIX/bin/wx-config \
  --with-libs=$PREFIX/lib \
  --with-includes=$PREFIX/include

#  --with-proj \
# --with-macosx-sdk=/Developer/SDKs/MacOSX10.8.sdk \
#   --with-liblas=$PREFIX \ # "/Users/cmbarton/grass\_source/LAS/lasdist/bin/liblas-config" \
#   --with-opencl \
#   --with-nls

make GDAL_DYNAMIC=
make bindist
