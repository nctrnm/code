#!/bin/bash
cd /storage/emulated/0/ngt;
echo syncing github repos
echo adding files to local index
hub add *;
echo commiting changes to HEADfile
hub commit -m "Updates to the mobile nm repository";
echo pushing files to remote repo
hub push origin master;
hub status > /storage/emulated/0/ngt/nsudo/ngits.txt;
cd nsudo && micro ngits.txt;
hub log > /storage/emulated/0/ngt/nsudo/ngitl.txt;
echo nmbl git syncronized;