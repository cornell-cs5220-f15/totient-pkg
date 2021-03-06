#!/bin/sh
#
# Eigen -- C++ template library for linear algebra
# http://eigen.tuxfamily.org/

source ./helper.sh $*

module load openblas
module load lapack/3.5.0-$TOOLCHAIN
module load suitesparse/4.4.5-$TOOLCHAIN
BUILD_TAG=3.2.5-$TOOLCHAIN

set_stage_dl http://bitbucket.org/eigen/eigen/get/3.2.5.tar.bz2

# Build shared libraries
mkdir build
cd build
cmake -D CMAKE_INSTALL_PREFIX=$PREFIX/eigen-$BUILD_TAG \
  -D FFTW_LIBRARIES="-lfftw3" ..
make
make install

leave_stage
