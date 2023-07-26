# ---alias---
# execute without expand command

alias tree 'tree -C --dirsfirst'
alias ls 'ls --color=auto --group-directories-first -X -F -N -h'
alias aria2c 'aria2c -x 8'

alias redshift "pkill redshift && redshift"
alias gammastep "pkill gammastep && gammastep"

# ---abbr---
# execute with expanded command

abbr gamma-soft "gammastep -O 4000"
abbr gamma-hard "gammastep -O 2000"
