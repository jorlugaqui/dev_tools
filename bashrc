# Go
export GOPATH=$HOME/apps/go/
export PATH=$PATH:/usr/lib/go-1.9/bin:$GOPATH/bin

# Virtual envs
export WORKON_HOME=~/.virtualenvs
. /usr/local/bin/virtualenvwrapper.sh

# Git
force_color_prompt=yes
color_prompt=yes

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\] $(parse_git_branch)\[\033[00m\]\$\n'
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$\n'
fi

# fzf
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# syntastic
export LC_CTYPE=en_US.UTF-8
