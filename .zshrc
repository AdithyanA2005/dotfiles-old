# Print Colorful Name on Start
lolcat ~/.deviceCustomLogo

# Config Files
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/functions.zsh

# Custom Script aliases
source ~/.custom_scripts/.zsh_aliases

# Plugins
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(~/.config/zsh/plugins/zsh-completions/src $fpath)

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Initialize starship for zsh
eval "$(starship init zsh)"

# Initialize Zoxide
# --cmd cd - this will ensure that when we call cd zoxide is called
# so now we can use both cd as normaly and z in "cd" itself with no confusions
eval "$(zoxide init --cmd cd zsh)" 


export EZA_CONFIG_DIR="$HOME/.config/eza"
