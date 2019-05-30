git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"

git add "CHANGELOG.md"
git commit --message "auto-generated CHANGELOG.md"
git push --quiet origin master
