#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "dark-10" ] && exit 0

cd build
pipenv run invoke wrangler.wander
