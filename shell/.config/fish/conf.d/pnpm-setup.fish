if command -q pnpm
  # pnpm
  set -gx PNPM_HOME "/home/sus/.local/share/pnpm"
  if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
  end
  # pnpm end
end
