export PATH=$PATH:/Users/mtoohig/work/is-scripts

# Default ZSH Options
setopt autocd              # change directory just by typing its name
setopt interactivecomments # allow comments in interactive mode
setopt magicequalsubst     # enable filename expansion for arguments of the form ‘anything=expression’
setopt nonomatch           # hide error message if there is no match for the pattern
setopt notify              # report the status of background jobs immediately
setopt numericglobsort     # sort filenames numerically when it makes sense
setopt promptsubst         # enable command substitution in prompt

# Plugins
source ~/.zsh/zsh-you-should-use/zsh-you-should-use.plugin.zsh
source ~/.zsh/fancy-ctrl-z.zsh

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/homebrew.zsh ]] && source ~/.zsh/homebrew.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/pyenv.zsh ]] && source ~/.zsh/pyenv.zsh

autoload -Uz +X compinit && compinit

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

export BAT_THEME=ansi
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(register-python-argcomplete pipx)"

# Created by `pipx` on 2024-10-09 19:31:06
export PATH="$PATH:/Users/mtoohig/.local/bin"
