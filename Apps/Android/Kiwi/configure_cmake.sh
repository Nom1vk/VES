#!/bin/bash

source tools.sh

VTK_DIR=$cmakeexternals/Build/vtk-android/CMakeExternals/Install/vtk-android/lib/cmake/vtk-6.2/
VES_DIR=$cmakeexternals/Build/ves-android
TOOLCHAIN=$source_dir/CMake/toolchains/android.toolchain.cmake

mkdir -p $build_dir
cd $build_dir
$CMAKE -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN -DANDROID_NATIVE_API_LEVEL=19 -DVTK_DIR=$VTK_DIR -DVES_DIR=$VES_DIR $app_dir
