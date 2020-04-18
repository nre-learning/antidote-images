#!/usr/bin/env bash

# This script clones a curriculum from a Git repository into a directory
# that is mounted to a host filesystem by Kubernetes. Meant to be run in a daemonset
# so that all hosts get the same curriculum.



if [ -z "$REPO" ] || [ -z "$BRANCH" ] || [ -z "$CURRICULA_DIR" ] || [ -z "$NAME" ]; then
    echo "Must provide all env vars"
    exit 1
fi

rm -rf $CURRICULA_DIR/$NAME
git clone -b $BRANCH $REPO $CURRICULA_DIR/$NAME
ls -lha $CURRICULA_DIR
ls -lha $CURRICULA_DIR/$NAME
sleep infinity
