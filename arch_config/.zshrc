if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="/opt/docker-desktop/bin:$PATH"
export PATH="/opt/nvim-linux64/bin:$PATH"
export PATH="$PATH:/usr/pgadmin4/bin"
export PATH="$PATH:/opt/maple2022/bin"
export PATH="$PATH:/home/neuralnine/Applications"
export PATH="$PATH:/home/neuralnine/.cargo/bin"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='exa --icons --color=auto'
alias ll='exa --icons -alF'
alias la='exa --icons -A'

alias rm='trash-put'

alias szrc="source ~/.zshrc"
alias zrc="nvim ~/.zshrc"
alias ncf="nvim ~/.config/nvim/init.lua"
alias docs="cd ~/Documents"
alias desk="cd ~/Desktop"
alias nv="nvim"
alias night="redshift -O 2400"
alias day="redshift -x"
alias acf="nvim ~/.config/alacritty/alacritty.toml"
alias python="python3"
alias nvsu="sudoedit"
alias minecraft="mangohud gamemoderun minecraft-launcher"
alias hcf="nv /home/neuralnine/.config/hypr/hyprland.conf"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR="nvim"

source /etc/profile.d/autojump.sh

unsetopt inc_append_history
unsetopt share_history

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.$USER.sock"

