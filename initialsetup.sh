#!/bin/sh
echo ""
echo "installing ssh and git:"
sudo apt-get install ssh git-core

echo ""
echo "generating ssh-key:"
ssh-keygen -t rsa -f "$HOME/.ssh/id_rsa.pub"

echo ""
echo "initializes git:"
echo -n "git name? "
read name
echo -n "git mail? "
read mail
git config --global user.name $name
git config --global user.email $mail

echo ""
echo ""

git init
git remote add origin git://github.com/levu42/dotfiles.git
git pull origin

rm initialsetup.sh
