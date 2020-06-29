#Matthew McGilvery
#Git Sync Script
#nctrnm.com
#6.29.2020
#GPL3 or later
#!/bin/bash
#change into git folder
cd /storage/emulated/0/nctrnmCODE/
#Pull (remote changes), Add (all new files), Commit (new files with message)
git pull && git add --all && git commit
#Push (new files and message to remote repository), open github in default browser
git push && git status && $github && echo "nctrnmCODE repository synced"
