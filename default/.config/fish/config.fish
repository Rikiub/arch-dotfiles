# disable fish_greeting
set -U fish_greeting

# my scripts dir
export PATH="$HOME/.local/bin:$PATH"

# ---init theme---
starship init fish | source
