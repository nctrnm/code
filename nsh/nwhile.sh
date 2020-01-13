#!/bin/bash
#if there is a wait.txt, wwit for 3s
while [[ -e wait.txt ]] ; do
# sleep for three seconds
  sleep 3 
done;