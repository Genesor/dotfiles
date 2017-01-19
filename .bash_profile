#Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
#export PS1="\h:\w$ "
export EDITOR=nano

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
# 🌵
export PS1="~ [\$(date +%k:%M)] \[\033[00m\]\W\[\033[32m\]\$(parse_git_branch) \[\033[01;32m\]>\[\033[01;33m\]>\[\033[01;35m\]> \[\033[00m\]"

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f $(brew --prefix)/etc/bash_completion ]
then
  . $(brew --prefix)/etc/bash_completion
fi

# then, do the sourcing of bash_completion
source /usr/local/etc/bash_completion

for rc in /etc/bash_completion /usr/local/etc/bash_completion /usr/share/bash-completion/bash_completion; do
    [ -f $rc ] && source $rc
done


# Homebrew Python instead of Apple's
#export	 PATH=/usr/local/bin:/usr/local/share/python:$PATH
#export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
#export PYTHONPATH="/usr/local/lib/python2.7/site-packages"

alias debugOn='export XDEBUG_CONFIG="idekey=PHPSTORM" && echo "PHPUnit Debugger On"'
alias debugOff='unset XDEBUG_CONFIG && echo "PHPUnit Debugger Off"'
alias pac='php app/console'
alias finder='open -R .'
alias gckm='git checkout master'
alias gck='git checkout '
alias grbm='git fetch -p;git rebase origin/master'
alias gfp='git fetch -p'
alias grb='git rebase origin '
alias gcm='git add -A; git commit'
alias gsm='git rebase -i `git merge-base origin/master HEAD`'
alias grst='git reset --hard origin/master'
alias gov3='cd /space/products/comuto3'
alias gomisc='cd /space/products/misc'
alias gowork='cd /space/products/workers'
alias goprod='cd /space/products/'

alias composer="php /usr/local/bin/composer.phar"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias brk="open -a Brackets"
alias phpstorm="open -a PhpStorm"
alias pycharm="open -a PyCharm"
alias sourcetree="open -a SourceTree"
alias arduino="open -a Arduino"
alias macdown="open -a MacDown"

alias petit-ecran="curl 192.168.34.158:3490 --data"

alias fuck='eval $(thefuck $(fc -ln -1))'

alias rootphp='sudo killall -9 php-fpm && sudo /usr/local/opt/php56/sbin/php-fpm --fpm-config /usr/local/etc/php/5.6/php-fpm.conf'

alias py='python'

export CASSANDRA_HOME=/space/experiments/cassandra
export CASSANDRA_BIN=$CASSANDRA_HOME/bin
export CASSANDRA_TOOLS_BIN=$CASSANDRA_HOME/tools/bin
export PATH=$CASSANDRA_BIN:$CASSANDRA_TOOLS_BIN:$M2:$PATH
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:/usr/local/Cellar/node/0.10.32/bin
export GOPATH=$HOME/go_work
export GOBIN=$GOPATH/bin
export PATH=$GOPATH:$GOBIN:$PATH

