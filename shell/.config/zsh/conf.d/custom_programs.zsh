# --- CUSTOM ---
# if command exist, replace builtin command and start setup

# exa: a modern replacement for ls.
if command -v exa &> /dev/null; then
	alias exa="exa --icons --group-directories-first --header --no-filesize"
	alias ls="exa"
# builtin ls
else
	alias ls="ls --color=auto --group-directories-first -X -F -N -h"
fi

# bat: a cat(1) clone with syntax highlighting and Git integration.
if command -v bat &> /dev/null; then
	alias bat="bat --color=always"
	alias cat="bat"

	# manpages highlight and theme
	export BAT_THEME=base16
	export MANPAGER="sh -c 'col -bx | bat -l man -p'"
	export MANROFFOPT="-c"
fi

# zoxide is a smarter cd command, inspired by z and autojump.
if command -v zoxide &> /dev/null; then
	eval "$(zoxide init zsh)"
fi
