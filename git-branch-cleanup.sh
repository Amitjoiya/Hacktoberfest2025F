#!/usr/bin/env bash
# git-branch-cleanup.sh
git fetch --prune
echo "Remote branches not merged into main:"
git branch -r --no-merged origin/main | sed 's/origin\///g'
