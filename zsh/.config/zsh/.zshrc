# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# nix integration
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

# source plugins
source ~/.config/zsh/.zsh_plugins.sh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# aliases
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias vimdiff="nvim -d"
alias idea="/Applications/IntelliJ\ IDEA\ CE.app/Contents/MacOS/idea"

# zsh auto completion
autoload -U compinit; compinit
setopt globdots

# terraform auto complete
complete -o nospace -C "$(which terraform)" terraform

# clean up
export NVM_DIR="$HOME/.config/nvm"
export AWS_CONFIG_FILE="$HOME/.config/aws/config"
export AWS_CLI_HISTORY_FILE="$HOME/.config/aws/history"
export AWS_CREDENTIALS_FILE="$HOME/.config/aws/credentials"
export AWS_WEB_IDENTITY_TOKEN_FILE="$HOME/.config/aws/token"
export AWS_SHARED_CREDENTIALS_FILE="$HOME/.config/aws/shared-credentials"
# source/load nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
