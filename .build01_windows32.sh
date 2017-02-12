#! /bin/bash
set -e

PRJ_DIR=${PWD}

# This is the path to the jonchki tool.
JONCHKI=${PRJ_DIR}/jonchki/local/jonchki.lua
JONCHKI_SYSTEM="--distribution-id windows --cpu-architecture x86"

COMPILER_OPTIONS="-DCMAKE_C_FLAGS=-m32 -DCMAKE_CXX_FLAGS=-m32 -DCMAKE_SYSTEM_NAME=Windows -DCMAKE_C_COMPILER=i686-w64-mingw32-gcc -DCMAKE_CXX_COMPILER=i686-w64-mingw32-g++ -DCMAKE_RC_COMPILER=i686-w64-mingw32-windres"

PREFIX_FOLDER=build/windows32

# Build the project.
. "${PRJ_DIR}/.build_common.sh"
