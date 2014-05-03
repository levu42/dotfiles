# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate _prefix
zstyle :compinstall filename '/home/levu/.zshrc'


# matches case insensitive for lowercase
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
#zstyle ':completion:*' insert-tab pending

autoload -Uz compinit
compinit

setopt PROMPT_SUBST

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory autocd
#setopt SHARE_HISTORY
# End of lines configured by zsh-newuser-install
if [[ "$nogit" == "" ]]
  then 
    nogit=2
fi
source ~/.zshprompt
PROMPT=$'%F{5}[%*] %F{green}%n%F{white}@%F{5}%m%F{3} %~%F{8}$(git_prompt)$ %f'
#PROMPT=$'%F{5}[%*] %F{green}%n%F{white}@%F{5}%m%F{3} %~%F{8}$ %f'
# echo %k{0}
\clear
printf "%12s"
length=$(expr length `whoami`)
printf "%*s" $length
echo -n $'\e[1;31m'
cat /etc/hostname | tr -d '\n'
echo $'\e[0m'
echo ""
alias clear='. ~/.zshrc'
alias diffd='diff -u'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias scrre='screen -RAaD'
alias ips='ipstatus'
alias ipstatus="echo 'ip a'; echo ''; ip a; echo ''; echo 'ip r'; echo ''; ip r; echo ''; echo 'brctl show'; echo ''; brctl show; echo ''; echo 'ping 8.8.8.8'; echo ''; ping 8.8.8.8"
#precmd () {print -Pn "\e]0;%n@%m: %~\a"}

vigrep () {grep -Ril $1 . | xargs vim -p; }

if [ -d "$HOME/go/bin" ] ; then
    PATH="$HOME/go/bin:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi




