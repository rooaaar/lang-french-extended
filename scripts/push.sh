#!/bin/sh
# Credit: https://gist.github.com/willprice/e07efd73fb7f13f917ea

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_files() {
  git checkout master
  # Current month and year, e.g: Apr 2018
  dateAndMonth=`date "+%b %Y"`
  # Stage the modified files in dist/output
  git add "CHANGELOG.md"
  # Create a new commit with a custom build message
  # with "[skip ci]" to avoid a build loop
  # and Travis build number for reference
  git commit -m "Travis : $dateAndMonth (Build $TRAVIS_BUILD_NUMBER)" -m "[skip ci]"
}

upload_files() {
  git push --quiet origin master https://${GH_TOKEN}@github.com/rooaaar/lang-french-extended.git > /dev/null 2>&1
}

setup_git

commit_files

# Attempt to commit to git only if "git commit" succeeded
if [ $? -eq 0 ]; then
  echo "New commit(s) in CHANGELOG.md. Push it to GitHub."
  upload_files
else
  echo "No changes in CHANGELOG.md. Nothing to do."
fi
