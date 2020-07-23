#!/bin/bash
#Matthew McGilvery
#7.22.20
#App Lister
#nctrnm.com
apt list --installed > aptlist.txt && pip list  >> /storage/emulated/0/aptlist.txt
