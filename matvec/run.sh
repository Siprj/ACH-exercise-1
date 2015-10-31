#!/bin/bash

for d in */ ; do
    (cd ${d} && make run 2>&1 | tee run.log)
done
