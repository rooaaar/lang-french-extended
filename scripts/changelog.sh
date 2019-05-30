git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"

git branch 

git add "CHANGELOG.md"
git commit --message "auto-generated CHANGELOG.md"
git push -u --quiet github.com:rooaaar/lang-french-extended HEAD:master
