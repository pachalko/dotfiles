

# Home location for k9s
export K9S_CONFIG_DIR=~/.config/k9s k9s info

# Enable ls color
export CLICOLOR=1

# Aliases. For a full list of active ones, run `alias`.
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias fzf='fzf --tmux'
alias h=history
alias k=kubecolor
alias lg=lazygit
alias lgd='lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias ll='ls -alh'
alias tf=tofu

# Path
export PATH=$PATH:$HOME/.rd/bin

# Completions for docker
source <(docker completion zsh)
# Completions for kubectl
source <(kubectl completion zsh)
# Completions for nerdctl
source <(nerdctl completion zsh)
# Completions for prefect
source <(prefect --show-completion)


# Set up Antidote: https://antidote.sh/install
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

# Set up fzf key bindings and fuzzy completion: https://junegunn.github.io/fzf/
source <(fzf --zsh)

# Zoxide smarter cd: https://crates.io/crates/zoxide
eval "$(zoxide init zsh)"

# Starship prompt: https://starship.rs/guide/
eval "$(starship init zsh)"
fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select
