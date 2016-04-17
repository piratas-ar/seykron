#!/bin/bash

if [ "$BLOG_HOST" == "" ]; then
  echo "BLOG_HOST environment variable is not defined."
  exit;
fi

sftp -b bin/deploy.sftp $BLOG_HOST
