PROMPT="%F{28}%n%f:%F{33}%~%f$"

# Settings for history of commands
HISTSIZE=1000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

alias sudoup='sudo apt update && sudo apt upgrade -y'
alias gccw='gcc -Wall -Wextra -Werror'
alias ccw='cc -Wall -Wextra -Werror'
alias ls='ls -F --color=auto'
alias ll='ls -la'
alias xcc='xclip -selection c'
alias envlj='env LANG=ja_JP.UTF-8'

# Alias for git
alias gita='git add'
alias gitc='git commit -m'
alias gits='git status'
alias gitpush='git push'
alias gitpull='git pull'
alias gitstatus='git status'
alias gitpushom='git push origin main'
alias gitpullom='git pull origin main'
alias gitnow='git add . && git commit -m now && git push origin main'

# For 42Tokyo
alias norminette='norminette -R CheckDefine'
alias norm='norminette -R CheckDefine'
export MAIL=tssaito@student.42tokyo.jp

# Created by `pipx` on 2024-12-12 12:23:41
export PATH="$PATH:/home/tsunami/.local/bin"
