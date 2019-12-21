#!/bin/bash
cd ~/nmbl;
hub pull;
hub add --all;
hub commit -m "Updates to the mobile nmbl repository";
hub push;
hub status > ~/nmbl/nsudo/ngits.txt;
hub log > ~/nmbl/nsudo/ngitl.txt;
echo nmbl git syncronized;