#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "dark-18" ] && exit 0

cd build
curl https://httpbin.org/ip
pipenv run invoke wrangler.search -t cn -l 200
