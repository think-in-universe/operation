#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "dark-6" ] && exit 0

git clone -b master --depth 5 https://${GITHUB_PAT}@github.com/${DEPLOYMENT_REPO}.git build
cd build

pipenv install --pypi-mirror https://pypi.python.org/simple
