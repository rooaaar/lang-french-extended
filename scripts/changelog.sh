git config user.name "Travis CI" && \
git config user.email "github@travis-ci.org" && \

git add "CHANGELOG.md" && \
git commit -m "auto-generated CHANGELOG.md" && \
git push origin HEAD:master
