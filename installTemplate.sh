#!/bin/sh
#快捷键方式安装

root=`pwd`
zshDIR=${root}/Util/oh-my-zsh
template=$zshDIR/templates/zshrc.zsh-template
echo $template
sed -i '' "s#export ZSH=.*#export ZSH='$zshDIR'#g" $template
cd ~/
pwd
target=".zshrc"
ln -fs ${template} ${target}
#需要手动设置
#chsh -s /bin/zsh  #设置zsh为默认的shell命令

#官方教程安装即目录路径
#zsh=`pwd`/Util/oh-my-zsh/templates/zshrc.zsh-template
#cp $zsh ~/.zshrc  #新建私有的配置文件


