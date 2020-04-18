#!/usr/bin/env bash

# This script handles copying from a read-only volume containing an Antidote curriculum
# into a pod-local directory, ensuring file ownership is as expected

if [ -z "$SOURCE_DIR" ] || [ -z "$DEST_DIR" ]; then
    echo "Must provide all env vars"
    exit 1
fi

# Show contents for debug purposes
ls -lha $SOURCE_DIR
ls -lha $DEST_DIR

# Copy all contents and set ownership recursively
cp -r $SOURCE_DIR/* $DEST_DIR
adduser -D antidote
chown -R antidote:antidote $DEST_DIR

# Show results again for debug purposes
ls -lha $DEST_DIR
