# disable fish_greeting
set -g fish_greeting

# init startship prompt
if command -q starship
	starship init fish | source
end

# pywal support
#cat ~/.cache/wal/sequences &

