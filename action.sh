#!/bin/sh

DEFAULT_DESTINATION=$INPUT_OUTPUT_DIR
# DEFAULT_OUTPUT=$INPUT_DEFAULT_OUTPUTS
echo $DEFAULT_OUTPUT

entrypoint.sh build $INPUT_SOURCES

# echo "::set-output name=pdf::${DOCS}/document.pdf"
