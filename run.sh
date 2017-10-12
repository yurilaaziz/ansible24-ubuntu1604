#!/bin/sh
GIT_REPO=$1
if [ -z "$GIT_REPO" ];then
  exit 0
fi

git clone  $GIT_REPO /tmp/ansible-product
cd /tmp/ansible-product
sh play.sh
echo SUCCESS SUCCESS
