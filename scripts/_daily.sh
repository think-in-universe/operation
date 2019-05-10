#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "dawn" ] && exit 0

cd build
pipenv run invoke cn-hello.welcome -d 3 --debug
pipenv run invoke cn-hello.summarize -d 3 --debug
