#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "shadow" ] && exit 0

cd build
pipenv shell
invoke steemstem.read
