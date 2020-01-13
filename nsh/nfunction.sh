#!/bin/bash

foo=bar

function f1 ()
{
  echo "$foo"
}

function f2 ()
{
  local foo=baz
  f1 # prints 'baz'
}

f2