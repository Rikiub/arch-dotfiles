# --- CUSTOM ---
# if command exist, replace builtin command and start setup

# exa: a modern replacement for ls.
if command -q exa
	alias exa "exa --icons --group-directories-first --header --no-filesize"
	alias ls "exa"
# builtin ls
else
  alias ls 'ls --color=auto --group-directories-first -X -F -N -h'
end

# bat: a cat(1) clone with syntax highlighting and Git integration.
if command -q bat
	alias bat "bat --color=always"
	alias cat "bat"

	# manpages highlight and theme
	set -x BAT_THEME base16
	set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
	set -x MANROFFOPT "-c"
end

# zoxide is a smarter cd command, inspired by z and autojump.
if command -q zoxide
	zoxide init fish | source
end
