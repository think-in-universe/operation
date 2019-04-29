#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "wisdom" ] && exit 0

cd build
pipenv run invoke steem-guides.read
