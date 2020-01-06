#!/bin/bash
echo "Directory Check" 
# test if /sdcard/ exists

if test -e /x/y/x; then
  echo "Alright man..." >&2
else
  echo "Yuck! Where is it??" >&2
  exit 1
fi