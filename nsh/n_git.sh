#!/bin/bash
cd /storage/emulated/0/ngt;
echo syncing github repos
echo adding files to local index
hub add .; 
hub pull origin master; 
echo commiting changes to HEADfile;
hub commit -m "Mobile updates"; 
echo pushing files to remote repo;
hub push origin master;
echo nmbl git syncronized;