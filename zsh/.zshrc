# Set zinit home directory
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit if not present
if ! [ -d $ZINIT_HOME ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

if [ -n "${ZSH_DEBUGRC+1}" ]; then
    zmodload zsh/zprof
fi

# Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add oh-my-zsh key-bindings. This basically fixes the Home/End/PageUp/PageDown keybindings
zinit snippet OMZL::key-bindings.zsh

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab # Replace zsh's default completion selection menu with fzf!

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Get rid of ZInit alias so that Zoxide can init properly
unalias zi

# Shell integrations
eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"


source "/etc/profile.d/rvm.sh"


# Global Configs
export EDITOR="nvim"
export AWS_PROFILE=Drop_Artifacts
export REGION=eu-west-1
export ECR_REPO_URL=679543960196.dkr.ecr.eu-west-1.amazonaws.com
export REGISTRY_ID=679543960196
export ADVERTISING_NAME="Fresco"
export NATIVE_APPLIANCE_ID="appliance-id"
export NATIVE_DEVICE_ID=device-id
export PATH=/home/johnsteps/.local/bin:$PATH
export PATH=/home/johnsteps/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/johnsteps/.config/

# fzf configuration
# Need to set it like this otherwise the FZF_DEFAULT_OPTS interferes with the fzf-tab plugin
FZF_DEFAULT_OPTS_CUSTOM='--no-height --no-reverse --border'
export FZF_CTRL_T_OPTS="
	$FZF_DEFAULT_OPTS_CUSTOM
	--preview '([ ! -d {} ] && bat {} || tree -L 1 -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="
	$FZF_DEFAULT_OPTS_CUSTOM
	--preview 'echo {}' --preview-window down:3:hidden:wrap
	--bind '?:toggle-preview'
	--bind 'ctrl-y:accept'"

# Load completions
## If the .zcompdump file has been modified more than 24h ago, regenerate the completions.
## Otherwise use the cached
autoload -Uz compinit
if [ "$(find ~/.zcompdump -mtime +1)" ] ; then
    compinit
fi
compinit -C

# Define what is a word
## (b)ash:       Word characters are alphanumerics only
autoload -Uz select-word-style
select-word-style bash

zinit cdreplay -q

# Completion styling
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zstyle ":completion:*" menu no
zstyle ":fzf-tab:*" fzf-bindings "enter:accept"
zstyle ":fzf-tab:complete:*" fzf-preview 'eza --icons --color $realpath' # Preview directories when doing cd

# ----- Bat (better cat) -----
export BAT_THEME=tokyonight_night

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt append_history
setopt share_history
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


# Aliases
alias cd='z'
alias vim='nvim'
alias c='clear'
alias loadesp=". $HOME/esp/esp-idf/export.sh"
alias micro="cd /home/johnsteps/Git/iot-micro-firmware;loadesp"
alias linux="cd /home/johnsteps/Git/iot-linux-firmware"
alias ufp="cd /home/johnsteps/Git/universal-fresco-protocol"
alias cat="batcat"
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias ll="eza --color=always --long --git --icons=always"

# Micro Firmware Env Variables
export ADVERTISING_NAME=Fresco
export NATIVE_APPLIANCE_ID=appliance-id
export NATIVE_DEVICE_ID=device-id

# User configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval $(thefuck --alias)

function untilSucceeds() {
    while true; do $@ && break; sleep 0.5; done
}

function untilFails() {
    while true; do $@ || break; sleep 0.5; done
}
