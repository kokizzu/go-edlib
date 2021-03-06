#!/bin/bash

# This script run all unit tests and store coverage output into coverage.out
# Require go >= 1.13

endpath=$(basename $(pwd))
if [ $endpath == "tests" ]
then
    cd ..
fi

go test ./... -v -race -coverprofile=tests/outputs/coverage.txt -covermode=atomic | tee tests/outputs/tests.txt