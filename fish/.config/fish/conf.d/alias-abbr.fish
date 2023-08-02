# ---alias---
# execute without expand command

alias tree 'tree -C --dirsfirst'
alias lsa 'ls -a'
alias lsl 'ls -l'
alias lsla 'ls -l -a'

alias aria2c 'aria2c -x 8'

alias gammastep "kill -9 gammastep ; command gammastep & ; disown"
alias redshift  "kill -9 redshift ; command redshift & ; disown"

# ---abbr---
# execute with expanded command

abbr gamma-soft "kill -9 gammastep ; command gammastep -O 4000 & ; disown"
abbr gamma-hard "kill -9 gammastep ; command gammastep -O 2000 & ; disown"
