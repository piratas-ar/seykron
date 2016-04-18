#!/bin/bash

if [ "$BLOG_HOST" == "" ]; then
  echo "BLOG_HOST environment variable is not defined."
  exit;
fi

mkdir -p tmp
sshfs -o sshfs_sync -o sync_readdir -o sync_read $BLOG_HOST:public_html tmp
rsync -rv build/ tmp
fusermount -u tmp
