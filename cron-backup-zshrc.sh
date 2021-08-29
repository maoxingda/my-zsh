#!/bin/zsh

repo=~/open-source/my-zsh

cp -f ~/.zshrc ${repo}/.zshrc

pushd "${repo}" || exit 1

git add ${repo}/.zshrc
git commit -m "daily backup ~/.zshrc"
git push origin master

popd || exit 1
