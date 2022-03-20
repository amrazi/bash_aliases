# aliases
alias python='python3'
alias pip='pip3'
alias dosh='printf "entering $(docker ps -l --format "{{.Names}}")\n" && docker exec -it $(docker ps -l --format "{{.Names}}") bash'
alias d='docker'
alias dps='docker ps -a'
alias dls='docker container ls'
alias dcp='docker cp'

#functions that are basically complicated aliases
dbash () {
    docker exec -it $1 bash
}

function dsr () {
    docker stop $1 && docker rm $1
}
