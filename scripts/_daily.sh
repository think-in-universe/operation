#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "darkblue" ] && exit 0

cd build
pipenv run invoke wrangler.missing -d 14 --debug
