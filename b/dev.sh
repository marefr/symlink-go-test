#!/bin/bash

if [ ! -d "../a" ]; then
    echo "Expected to find the a project in '../a', but there is no such folder."
    exit 1
fi

# Create Symbolic links
## -s (symbolic)
## -v (verbose)
## -f (force): remove existing destination files
## -n (no-dereference): prevents link being created underneath existing link when directory - (see https://unix.stackexchange.com/a/207296/6071)
ln -s -v -f -n "$PWD"/src/pkg/extensions/* ../a/pkg/extensions
