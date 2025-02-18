#zmodload zsh/zprof

export XDG_CONFIG_HOME="$HOME/.config"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arjith/.zshrc'

#autoload -Uz compinit
#compinit
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

bindkey "^f" autosuggest-accept

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh --config ~/.config/zsh/omp/config.yaml)"
. "/home/arjith/.deno/env"
FPATH="$HOME/.docker/completions:$FPATH"
autoload -Uz compinit && compinit


# Created by `pipx` on 2024-12-28 11:25:45

export NVM_DIR="$HOME/.nvm"
nvm() {
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}


# bun completions
bun(){
    [ -s "/home/arjith/.bun/_bun" ] && source "/home/arjith/.bun/_bun"
}

# bun
export BUN_INSTALL="$HOME/.bun"

export PATH="$PATH:/home/arjith/.local/bin:/usr/local/go/bin:$BUN_INSTALL/bin"

alias tmuxw="~/.config/tmux/work_setup.sh"

gvm(){
    [[ -s "/home/arjith/.gvm/scripts/gvm" ]] && source "/home/arjith/.gvm/scripts/gvm"
}

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
sdk(){
    [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
}

#zprof
