# disable fish_greeting
set -U fish_greeting

# my scripts dir
export PATH="$HOME/.local/bin:$PATH"

# init custom prompt
starship init fish | source
