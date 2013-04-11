#!/usr/bin/env bash

coffee --compile \
       --bare \
       --lint \
       --map \
       -- \
       animal.coffee \
       dog.coffee \
       main.coffee
