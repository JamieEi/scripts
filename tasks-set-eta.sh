#!/usr/bin/env bash

set -e

task 'status:pending (planned.not: or ACTIVE)' export | jq -c '.[]' | ~/.task/hooks/set-eta.py | task import

