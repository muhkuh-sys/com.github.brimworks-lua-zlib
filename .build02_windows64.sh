#! /bin/bash
set -e

PRJ_DIR=${PWD}

# This is the path to the jonchki tool.
JONCHKI_SYSTEM="--distribution-id windows --cpu-architecture x86_64"

COMPILER_OPTIONS="-DCMAKE_C_FLAGS=-m64 -DCMAKE_CXX_FLAGS=-m64 -DCMAKE_SYSTEM_NAME=Windows -DCMAKE_C_COMPILER=x86_64-w64-mingw32-gcc -DCMAKE_CXX_COMPILER=x86_64-w64-mingw32-g++ -DCMAKE_RC_COMPILER=x86_64-w64-mingw32-windres"

PREFIX_FOLDER=build/windows64

# Build the project.
. "${PRJ_DIR}/.build_common.sh"
