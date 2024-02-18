## Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias home='cd ~'
alias c='clear'
alias ls='colorls --sd'  
alias la='colorls --sd -A'
alias ll='colorls -l --sd --gs'
alias lla='colorls -lA --sd --gs'
alias lt='colorls -l --sd --gs --tree'

# Git
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gs='git status'
alias gpl='git pull'
alias gpu='git push'
alias gcl='git clone'

# File operations
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Network
alias ping='ping -c 5'

# System
alias reboot='sudo shutdown -r now'
alias poweroff='sudo shutdown -P now'
alias h='history'
alias df='df -h'
alias du='du -h'

# Package Management
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias install='sudo apt install'
alias remove='sudo apt remove'

# Processes
alias psa='ps aux'
alias psg='ps aux | grep'

# Text editing
alias nano='nano -c'
alias vi='vim'

# Miscellaneous
alias now='date +"%T"'
alias today='date +"%A, %B %-d, %Y"'

