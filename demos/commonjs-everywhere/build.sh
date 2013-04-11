#!/usr/bin/env bash

# See README.md for a synopsis.

cd js

cjsify ../coffee/main.coffee \
       --watch \
       --minify \
       --root ../coffee \
       --output all.js \
       --source-map-file all.map
