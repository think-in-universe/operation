#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "debug" ] && exit 0

git clone -b sportstalk --depth 5 https://${GITHUB_PAT}@github.com/${DEPLOYMENT_REPO}.git build
cd build

pipenv install --pypi-mirror https://pypi.python.org/simple
