#Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
export EDITOR=nano

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\[\033[01;33m\] ~ \w\[\e[0m\]\n ~ [\$(if [ \$? == 0 ]; then echo ‣; else echo X; fi)] [\$(date +%k:%M)] \[\033[00m\]\W\[\033[32m\]\$(parse_git_branch) \[\033[01;32m\]>\[\033[01;33m\]>\[\033[01;35m\]> \[\033[00m\]"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

alias finder='open -R .'
alias gckm='git checkout master'
alias grbm='git fetch -p;git rebase origin/master'
alias gfp='git fetch -p'
alias gcm='git add -A; git commit'
alias gsm='git rebase -i `git merge-base origin/master HEAD`'

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias phpstorm="open -a PhpStorm"
alias pycharm="open -a PyCharm"
alias sourcetree="open -a SourceTree"
alias arduino="open -a Arduino"
alias macdown="open -a MacDown"
alias gog="open -a Goland"
alias vs="open -a \"Visual Studio Code\" ."

export CASSANDRA_HOME=/space/experiments/cassandra
export CASSANDRA_BIN=$CASSANDRA_HOME/bin
export CASSANDRA_TOOLS_BIN=$CASSANDRA_HOME/tools/bin
export PATH=$CASSANDRA_BIN:$CASSANDRA_TOOLS_BIN:$M2:$PATH
export PATH=$PATH:/usr/local/bin
export GOPATH=/space/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH:$GOBIN:$PATH
export PATH=/Users/ben/.bin:$PATH

