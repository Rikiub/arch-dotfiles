if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2024-06-01 20:56:41
set PATH $PATH /home/sus/.local/bin

# pnpm
set -gx PNPM_HOME "/home/sus/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
