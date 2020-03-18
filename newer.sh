#!/bin/bash
echo "The newest file is:"
ls -t "$@" |head -n1

