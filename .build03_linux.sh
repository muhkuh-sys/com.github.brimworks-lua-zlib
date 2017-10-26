#! /bin/bash
set -e

PRJ_DIR=${PWD}

# This is the path to the jonchki tool.
JONCHKI_SYSTEM=""

COMPILER_OPTIONS=""

PREFIX_FOLDER=build/linux

# Build the project.
. "${PRJ_DIR}/.build_common.sh"
