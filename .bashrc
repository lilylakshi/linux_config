#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export ANDROID_HOME=/opt/android-sdk

# Go settings
PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/projects/goworkspace
PATH=$PATH:$GOPATH/bin

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\u@\h \[\033[39m\]\w\[\033[31m\]\$(parse_git_branch)\[\033[00m\] $ "

# PATH=$PATH:$HOME/.gem/ruby/2.3.0/binexport
PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

eval "$(dircolors ~/.dircolors)";