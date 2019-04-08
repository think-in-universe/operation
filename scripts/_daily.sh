#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "light" ] && exit 0

cd build
pipenv pipenv run invoke cn-curation.read
