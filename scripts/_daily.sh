#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "dawn" ] && exit 0

cd build
pipenv run invoke cn-hello.read -d 3 --debug
