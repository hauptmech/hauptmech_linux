#!/bin/sh
# $1 is username
echo "syntax on" >> /home/$1/.vimrc

#Users get green prompt, root gets red
REPL=$(printf "%q" "PS1='\[\e[1;32m\][\W]$\[\e[0m\]'")
sed -i "s/^PS1.*$/$REPL/g" /home/$1/.bashrc

cat .inputrc >> /home/$1/.inputrc
