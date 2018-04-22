#!/bin/bash


if ! git diff-index --quiet HEAD --; then
    commit_msg="Auto update commit"
    read -p "Set commit name (default '$commit_msg'): " user_input
    echo
    if [[ ! -z $user_input ]]; then
        commit_msg=$user_input
    fi
    echo $commit_msg
    git add .
    git commit -m "$commit_msg"
    git push -u origin master
fi
