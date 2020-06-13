#!/bin/bash
$(ngt)
git pull nmoto nmoto && git add --all
git commit
git push nmoto nmoto && git status
