#!/usr/bin/env bash

set -e

task status:pending planned.not: export | jq -c '.[]' | ~/.task/hooks/set-eta.py | task import

