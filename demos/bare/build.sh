#!/usr/bin/env bash

# See README.md for a synopsis.

cd js

coffee --compile \
       --bare \
       --lint \
       --map \
       -- \
       animal.coffee \
       dog.coffee \
       main.coffee
