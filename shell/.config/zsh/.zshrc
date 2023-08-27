# ---zsh start-config---

#export ANTIDOTE_HOME=~/.antidote

# zsh plugin manager
source '/usr/share/zsh-antidote/antidote.zsh'
antidote load

# my scripts "path"
export PATH="$HOME/.local/bin:$PATH"

# ---Aliases---

# aria2c
alias aria2c="aria2c -x 8"

# exa | "'ls' replacement"
alias ls="exa --icons --group-directories-first --sort Name"

cd_after_ls() { cd $1 ; ls }
alias cd="cd_after_ls"

# sway
alias sway-check-output="swaymsg -t get_tree"

# ---Key Bindings---

bindkey '^[[1;3A' history-substring-search-up
bindkey '^[[1;3B' history-substring-search-down

# ---pywal---

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh
