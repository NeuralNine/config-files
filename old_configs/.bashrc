case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias sbrc="source ~/.bashrc"
alias brc="nvim ~/.bashrc"
alias ncf="nvim ~/.config/nvim/init.vim"
alias docs="cd ~/Documents"
alias desk="cd ~/Desktop"
alias prepdir="cd ~/Documents/Programming/NeuralNine/Python/Prepared"
alias nv="nvim"
alias recentinstalls="grep \" install \" /var/log/apt/history.log"
alias recentinstalls_detailed="grep \" install \" /var/log/dpkg.log"
alias tcf="nvim ~/.tmux.conf"
alias stcf="tmux source ~/.tmux.conf"
alias night="redshift -O 2400"
alias day="redshift -x"
alias i3cf="nvim ~/.config/i3/config"
alias pcf="nvim ~/.config/polybar/config"
alias acf="nvim ~/.config/alacritty/alacritty.yml"

__conda_setup="$('/home/neuralnine/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/neuralnine/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/neuralnine/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/neuralnine/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

eval "$(direnv hook bash)"

. /usr/share/autojump/autojump.sh

export PATH=/opt/docker-desktop/bin:$PATH
export PATH=$PATH:/usr/pgadmin4/bin

