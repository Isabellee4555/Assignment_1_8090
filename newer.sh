#!/bin/bash
echo "The newest file is:"
ls -c "$@" |head -n1

