# Dev Environment
yum groupinstall -y 'Development Tools'
yum install -y ctags git tmux zsh gmp-devel 

# monitoring
yum install -y htop

# Terminal Recorder
pip install TermRecord

# VIM Configuration
mkdir -p ~/.vim
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
