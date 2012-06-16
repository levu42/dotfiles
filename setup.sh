#!/bin/sh

#changing the shell
echo "setting the shell to zsh:"
chsh -s /bin/zsh

# archiving system
mkdir .archive
mkdir archive
crontab -l > .curcrontab 2> /dev/null
echo "55 23 * * * $HOME/.archive.sh" >> .curcrontab
crontab .curcrontab
rm .curcrontab


