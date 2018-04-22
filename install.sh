#!/bin/bash

echo "--NIKK SCRIPT INSTALL--"
echo

# install auto-commit script
read -p "This will install auto-commit script. Do you want to continue? " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
    if [ -f /usr/local/bin/auto-commit ]; then
        rm /usr/local/bin/auto-commit
    fi
    if [ -L /usr/local/bin/auto-commit ]; then
        unlink /usr/local/bin/auto-commit
    fi

    cp auto-commit.sh /usr/local/bin/auto-commit
    chmod +x /usr/local/bin/auto-commit
fi

echo "--COMPLETE--"
echo
