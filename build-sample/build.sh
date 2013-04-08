#!/usr/bin/env bash

# Make directories to store our raw and compressed Javascript:
mkdir -p js dist

# Compile Coffeescript to Javascript:
#
#   -o js   - "output javascript to the js directory"
#   -j      - "join all files together into one output file"
#   -l      - "run Javascript through Javascript Lint"
#   -m      - "produce source maps"
#   --      - "source files start here"
coffee -o js -j -l -m -- coffee/animal.coffee
