alias c='clear'
alias h='history'
alias cd='z'
#alias gh='history|grep'
alias mkdir='mkdir -p'
alias mv='mv -vi'
alias cp='cp -vi'
alias tree='tree -C'
alias ping='ping -c 5'
alias df='df -H'
#alias pbc='pbcopy'
alias vim='nvim'
#alias gpgl='gpg --list-keys'

#alias p='python'
#alias p2='$HOME/.pyenv/shims/python2'
#alias p3='python3'

alias reboot='sudo /sbin/reboot'
alias rfinder='killall Finder'
alias rdock='killall Dock'

alias cat='bat --paging=never'
#alias gdu='gdu-go'
#alias ptop='bpytop'
alias disk='gdu'
alias grep='rg'
#alias top='htop'
alias wget='wget2'

alias dnslookup="dig +noall +answer"

alias lzd='lazydocker'
alias lzg='lazygit'

alias ga='git add'
alias gs='git status'
alias gc='git commit'

alias ls='eza --group-directories-first --icons'
alias ll='eza --group-directories-first --icons -lh'
alias la='eza --group-directories-first --icons -a'
alias lla='eza --group-directories-first --icons -lah'
alias lsa='eza --group-directories-first --icons -lah'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'

alias sc='source $HOME/.zshrc'
alias zshrc='vim ~/.zshrc'
alias sship='vim ~/.config/starship.toml'
alias aliases='vim ~/.zsh/aliases.zsh'
alias nvimrc='vim ~/.config/nvim/'
alias vimrc='nvimrc'

# Share current dir
#alias pshare='python -m http.server 2121'

# local ip
alias ip='ifconfig | grep "inet "'

# public ip
#alias myip='curl ipinfo.io; echo'

# combined
#alias ip='echo "Local ips:" && ifconfig | grep "inet " | awk '\''{printf "\t%s\n", $2}'\'' && echo "External ip:" && curl -s ipinfo.io/ip | awk '\''{printf "\t%s\n", $0}'\'';'

# AWS Aliases
alias hssnp='export AWS_PROFILE=hss-nonprod'
alias hssprod='export AWS_PROFILE=hss-prod'
alias codanp='export AWS_PROFILE=coda-nonprod'
alias codaprod='export AWS_PROFILE=coda-prod'
alias av='aws-vault exec ${AWS_PROFILE}'
alias awslogin='aws sso login --profile ${AWS_PROFILE}'

# Docker Aliases
alias dockerstart='colima start'
alias dockerlogin='aws --profile ${AWS_PROFILE} ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 089022728777.dkr.ecr.us-east-1.amazonaws.com'

function openapi() {
  local file
  file=$(find . -maxdepth 1 -type f -name "*.json" | sed 's|^\./||' | fzf --prompt="Select OpenAPI file: ")
  if [[ -n $file ]]; then
    docker run --rm -ti -v$(pwd):/opt zaghaghi/openapi-tui -i /opt/$file
  else
    echo "No file selected."
  fi
}

# NVM
alias nvmlts='nvm use --lts'
alias nvm18='nvm use 18'

# Notes
alias no="notes"
alias na="notes-add"
alias todo='notes TODO.md'
alias todos='todo'
alias nt='notes-add-tmp'
alias nl='notes-add-lesson'
alias pad='nt'
alias lesson='nl'
alias til='notes TIL.md'

# Database
alias db='connect-db.sh dev'
alias dbdev='db'
alias dbstaging='connect-db.sh staging'
alias dbprod='connect-db.sh prod'
alias tunnel='tunnel-db.sh dev'
alias tunneldev='tunnel'
alias tunnelstaging='tunnel-db.sh staging'
alias tunnelprod='tunnel-db.sh prod'

# Fun
alias b64e='b64encode'
alias b64d='b64decode'
