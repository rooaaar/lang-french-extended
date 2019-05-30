#!/usr/bin/env bash
cd dist && \
git init && \

git config user.name "Travis CI" && \
git config user.email "github@travis-ci.org" && \

git add "CHANGELOG.md" && \
git commit -m "Auto-Generating CHANGELOG.md" && \
git push --force "test" master:rooaaar/lang-french-extended
