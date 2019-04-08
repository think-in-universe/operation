#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "shadow" ] && exit 0

git clone -b master --depth 5 https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git build
cd build

pipenv install
