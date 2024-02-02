#!/bin/bash

ls -1 src/pkg/extensions | xargs -n 1 -I '{}' rm -v -f '../a/pkg/extensions/{}'
