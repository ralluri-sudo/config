# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export FZF_DEFAULT_COMMAND="fd --hidden"

# plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH=$PATH:~/Development/fzf-zsh-plugin/bin
source ~/Development/fzf-zsh-plugin/fzf-zsh-plugin.plugin.zsh
eval "$(zoxide init zsh)"

# alias
alias devtoken="~/Scripts/run_jwt_command.sh"

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

export JAVA_HOME="/Users/ralluri/Library/Java/JavaVirtualMachines/corretto-21.0.5/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Directory specific config
function chpwd() {
  if [ -r $PWD/.zsh_config ]; then
    source $PWD/.zsh_config
  fi
}
alias config='/usr/bin/git --git-dir=/Users/ralluri/.cfg/ --work-tree=/Users/ralluri'
