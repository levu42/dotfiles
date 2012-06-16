#!/bin/sh
echo "installing ssh and git:"
sudo apt-get install ssh git-core

echo "generating ssh-key:"
ssh-keygen -t rsa -f "$HOME/.ssh/id_rsa.pub"

echo "initializes git:"
echo -n "git name? "
read name
echo -n "git mail? "
read mail
git set --global user.name $name
git set --global user.email $mail

git clone git://github.com/levu42/dotfiles.git .

rm initialsetup.sh
