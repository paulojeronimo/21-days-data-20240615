#!/usr/bin/env bash
cd $(dirname $0)
for d in $(find . -mindepth 1 -maxdepth 1 -type d ! -name .git)
do
  cd $d
  echo Updating $d/SHA256SUMS ...
  rm -f SHA256SUMS
  sha256sum * > SHA256SUMS
  cd $OLDPWD
done
