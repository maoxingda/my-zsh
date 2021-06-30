#!/bin/zsh

uhome="/Users/maoxd/"
repo="$uhome/open-source/zsh/"

cp "$uhome/.zshrc" $repo
pushd $repo
git add $repo
git commit -m "daily backup ~/.zshrc"
git push origin master
popd