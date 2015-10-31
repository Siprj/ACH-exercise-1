#!/bin/bash

for d in */ ; do
    (cd ${d} && make | tee 2>&1 build.log)
done
