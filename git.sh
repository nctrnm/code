#!/bin/bash
$(ngt)
git pull nmoto nctrnmCODE && git add --all
git commit
git push nmoto nctrnmCODE  && git status
