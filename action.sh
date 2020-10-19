#!/bin/sh

echo "sources:"$INPUT_SOURCES
echo "outpuit_dir":$INPUT_OUTPUT_DIR

entrypoint.sh build $*
