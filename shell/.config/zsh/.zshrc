# antidote plugin manager
export ANTIDOTE_HOME=$ZDOTDIR/antidote
source '/usr/share/zsh-antidote/antidote.zsh'
antidote load

# source all files in conf.d
for file in $ZDOTDIR/conf.d/*.zsh; do
	source $file
done

# ---Key Bindings---

bindkey '^[[1;3A' history-substring-search-up
bindkey '^[[1;3B' history-substring-search-down
