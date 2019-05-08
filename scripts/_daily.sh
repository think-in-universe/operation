#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "dark-17" ] && exit 0

cd build
pipenv run invoke wrangler.wander
