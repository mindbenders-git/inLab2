#!/usr/bin/bash

user=$(find $1 -type d | wc -l)
echo "$user"
