#!/bin/sh
#快捷键方式安装
#需要手动设置
#chsh -s /bin/zsh  #设置zsh为默认的shell命令

root=`pwd`
zshDIR=${root}/Util/oh-my-zsh
template=$zshDIR/templates/zshrc.zsh-template
echo $template
#sed -i '' "s#export ZSH=.*#export ZSH='$zshDIR'#g" $template
cd ~/
pwd
target=".zshrc"
ln -fs ${template} ${target}

#vim 配色 http://www.cnblogs.com/gslyyq/p/5251331.html
#Vim 的配色最好和终端的配色保持一致，不然在 Terminal/iTerm2 里使用命令行 Vim 会很别扭：
solarizedDIR=${root}/Util/solarized
cd $solarizedDIR/vim-colors-solarized/colors
#新建colors目录，拷贝solarized.vim到新目录中
mkdir -p ~/.vim/colors && cp solarized.vim ~/.vim/colors/
# echo换行符支持 -e
echo -e 'syntax enable\nset background=dark\ncolorscheme solarized' >> ~/.vimrc





#官方教程安装即目录路径
#zsh=`pwd`/Util/oh-my-zsh/templates/zshrc.zsh-template
#cp $zsh ~/.zshrc  #新建私有的配置文件


