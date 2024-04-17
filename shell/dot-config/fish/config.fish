# disable fish_greeting
set -g fish_greeting

# init startship prompt
if command -q starship
	starship init fish | source
end

# pnpm
set -gx PNPM_HOME "/home/sus/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
