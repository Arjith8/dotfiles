# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arjith/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
alias vim="nvim"
alias v="vim ."

# Plugin Manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

#loading completions
autoload -Uz compinit && compinit
bindkey "^f" autosuggest-accept
# source ~/.config/zsh/oh_my_zsh/.zshrc
# source ~/.config/zsh/starship_/.zshrc
#

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh --config ~/.config/zsh/omp/config.yaml)"
. "/home/arjith/.deno/env"
FPATH="$HOME/.docker/completions:$FPATH"
autoload -Uz compinit
compinit


# Created by `pipx` on 2024-12-28 11:25:45
export PATH="$PATH:/home/arjith/.local/bin"
alias tmux="~/.config/tmux/base.sh"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/arjith/.bun/_bun" ] && source "/home/arjith/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
