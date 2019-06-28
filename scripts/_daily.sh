#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "debug" ] && exit 0

cd build
pipenv run invoke sports.read-posts
pipenv run invoke sports.read-comments
