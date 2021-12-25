export PS1="\[\033[38;5;82m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;33m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;5m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]$ \[$(tput sgr0)\]"
force_color_prompt=yes

# aliases
alias python='python3'
alias pip='pip3'
alias dosh='printf "entering $(docker ps -l --format "{{.Names}}")\n" && docker exec -it $(docker ps -l --format "{{.Names}}") bash'
alias mkdir='mkdir -pv'
alias d='docker'
alias dps='docker ps -a'
alias dls='docker container ls'
alias loc='readlink -e'
alias dcp='docker cp'

#functions that are basically complicated aliases
dbash () {
    docker exec -it $1 bash
}

function dsr () {
    docker stop $1 && docker rm $1
}
