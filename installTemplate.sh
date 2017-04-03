#!/bin/sh
#快捷键
root=`pwd`
template=${root}/templates/zshrc.zsh-template
echo $template
cd ../
pwd
target=".zshrc"
ln -fs ${template} ${target}
