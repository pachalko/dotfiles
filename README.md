# dotfiles

## Restore

Create the alias, clone, and checkout.
```
❯ alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
❯ git clone --bare git@github.com:pachalko/dotfiles.git $HOME/.dotfiles
❯ dotfiles config --local status.showUntrackedFiles no
❯ dotfiles checkout
```

If you already have some of the dotfiles present, you will see this error.
```
error: The following untracked working tree files would be overwritten by checkout:
 .zshrc
Please move or remove them before you switch branches.
Aborting
```

Remove or backup any collisions and repeat the checkout.
```
❯ mv ~/.zshrc ~/.zshrc_backup
❯ dotfiles checkout
```

Done.


