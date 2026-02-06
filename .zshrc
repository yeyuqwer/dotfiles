export ZSH="$HOME/.oh-my-zsh"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

ZSH_THEME=""


# pnpm
export PNPM_HOME="/Users/Lawliet/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

alias p="pnpm"

# bun completions
[ -s "/Users/Lawliet/.bun/_bun" ] && source "/Users/Lawliet/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# neovim
alias vi="nvim"
alias vv="nvim"

# python3
alias pt="python3"
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Fuck React Native
# export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator


. "$HOME/.local/bin/env"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# kitty
alias ky='kitty --single-instance --directory'

# starship
eval "$(starship init zsh)"

