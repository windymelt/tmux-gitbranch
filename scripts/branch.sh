#!/usr/bin/env bash

main() {
    git status > /dev/null 2>&1
    if [[ $? == 0 ]] ; then
        which jq  >/dev/null 2>&1
        git rev-parse --abbrev-ref HEAD
    else
        echo "NOTGIT"
    fi
}

main