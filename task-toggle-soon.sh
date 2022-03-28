#!/usr/bin/env bash

TAG=soon
OP='+'

task +$TAG $1 &> /dev/null && OP='-'
task mod $1 $OP$TAG

