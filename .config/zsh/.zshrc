# Aliases. For a full list of active ones, run `alias`.
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias fzf='fzf --tmux'
alias h=history
alias k=kubecolor
alias lg=lazygit
alias lgd='lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias ll='ls -alh'
alias tf=tofu

# Init bash-style completions (required for AWS)
autoload -Uz bashcompinit && bashcompinit

# Set up Antidote: https://antidote.sh/install
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load  # initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt

#
# Other completions, not provided by plugins
#

# Completions for docker
source <(docker completion zsh)
# Completions for kubectl
source <(kubectl completion zsh)
# Completions for nerdctl
source <(nerdctl completion zsh)
# Completions for prefect
source <(prefect --show-completion)

# Change completion style: https://github.com/mattmc3/ez-compinit?tab=readme-ov-file#how-do-i-use-it
zstyle ':plugin:ez-compinit' 'compstyle' 'gremlin'

#
# Other goodies
#

# Set up fzf key bindings and fuzzy completion: https://junegunn.github.io/fzf/
source <(fzf --zsh)

# Zoxide smarter cd: https://crates.io/crates/zoxide
eval "$(zoxide init zsh)"

# Starship prompt: https://starship.rs/guide/
eval "$(starship init zsh)"
