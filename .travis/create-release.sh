#!/bin/sh

if [ $# -eq 0 ]; then
    echo "No git tag argument provided"
    exit 1
fi

GIT_TAG=$1

create_release() {
  mkdir -p release/img/
  mkdir -p release/fonts/
  cp -R docs/img/* release/img/
  cp -R docs/fonts/* release/fonts/
  zip -r git-design-guide-assets-${GIT_TAG}.zip release/
}

create_release
