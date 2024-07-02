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

