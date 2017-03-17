# Path to your oh-my-zsh installation.
export ZSH=/home/bootinge/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"
HISTCONTROL=ignoredups:ignorespace

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git node npm bower z pyenv history django dirhistory docker git-flow tmux)
plugins=(git z pyenv history django dirhistory docker git-flow virtualenv)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# Configuration for Android
export ANDROID_HOME=/home/bootinge/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
#export ANDROID_SDK_ROOT=/Applications/AndroidSDK
#export ANDROID_NDK_ROOT=/Applications/android-ndk-r9c
#export ANDROID_HOME=$ANDROID_SDK_ROOT
#export NDK_ROOT=/Applications/android-ndk-r9c
#export PATH="$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_NDK_ROOT"

# Configuration for GO
export GOROOT=/usr/local/go
export GOPATH=$HOME/work/go/
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

#export GRADLE_HOME=/opt/android-studio/gradle/gradle-2.10
#export PATH="$PATH:$GRADLE_HOME/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias jserver="json-server --watch ./db.json --port 3000"
alias tensorflow='docker run -it -p 8888:8888 gcr.io/tensorflow/tensorflow'
alias conda='docker run -i -t -p 8888:8888 continuumio/anaconda /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip="*" --port=8888 --no-browser"'
alias mongodb="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable --name some-mongo -d mongo"
alias elastickorean="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -d -p 9200:9200 n42corp/elasticsearch-n42:20150922"
alias koreanapi="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -d -p 4567:4567 n42corp/korean-morpheme-sinatra"
alias jenkins="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -p 8080:8080 -p 50000:50000 jenkins"
alias spark="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -it -p 8088:8088 -p 8042:8042 -p 4040:4040 -h sandbox sequenceiq/spark:1.6.0 bash"
alias ionic="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -ti --rm -p 8100:8100 -p 35729:35729 --privileged -v ~/.gradle:/root/.gradle -v \$PWD:/myApp:rw agileek/ionic-framework ionic"
alias centos="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -ti -p 8000:8000 --rm centos:latest /bin/bash"
alias ubuntu="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -it ubuntu:trusty /bin/bash"
alias nodejs="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -it -p 3000:3000 -p 8000:8000 node:latest /bin/bash"
alias mean="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -it -p 3000:3100 -p 8000:8500 meanjs/mean /bin/bash"
alias django="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -p 8000:8100 -it django:latest /bin/bash"
alias djangooscar="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -u root -p 8000:8600 -it oscarcommerce/django-oscar-sandbox /bin/bash"
alias djangoweb="docker run --memory-swap 1G --security-opt seccomp:unconfined --privileged --cpu-period=50000 --cpu-quota=25000 --oom-kill-disable -p 80 -d -e MODULE=myapp mbentley/django-uwsgi-nginx"
alias djangoall="git clone https://github.com/bootinge/youtube-audio-dl.git;cd youtube-audio-dl;docker-compose run --memory-swap 1G --security-opt seccomp:unconfined django pip install -r requirements.txt;docker-compose up -d;docker-compose run django python manage.py migrate;docker-compose logs"
alias default="docker run --privileged -p 8000:8000 -v ~/mnt:/tmp -it django:latest /bin/bash"
alias cassandra='docker run -d --name kong-database -p 9042:9042 cassandra:2.2'
alias dockerfile="docker build ."
alias yt="youtube-dl"
alias freeze="pip freeze >> requirements.txt"
alias pydev="docker run -i -t --rm python:2.7"

alias tm="tmux attach -t base || tmux new -s base"
alias huginn="docker run -it -p 3000:3000 cantino/huginn"

# Android
alias gradle_build="./gradlew build --info"
alias gradle_test="./gradlew test --info"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export GREP_COLOR='4;32'
#alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Various
alias h='history | tail'
alias hg='history | grep'

# Git
alias gcl='git clone '
alias gst='git status'
alias {gbra,gb}='git branch'
alias {gco,go}='git checkout'
alias {gcob,gob}='git checkout -b '
alias {gadd,ga}='git add '
alias {gcom,gc}='git commit'
alias {gpul,gl}='git pull '
alias {gpus,gh}='git push '
alias glom='git pull origin master'
alias ghom='git push origin master'
alias gg='git grep '

# System
alias df="df -h"
alias du="du -h"

function terminal_record() {
        filename=`date +'%Y%d%m-%H:%M:%S'`.html
        echo $filename
        TermRecord -o $filename
}

function docker_create_container() {
        docker run --privileged -v /Work:/tmp --security-opt
seccomp:unconfined -it $1 /bin/bash
}

function docker_attach () {
        docker exec -i -t $1 /bin/bash
}

function docker_run () {
        docker exec $1 $2
}

function docker_attach_quick () {
        docker exec -i -t $(docker ps -q | head -n 1) /bin/bash
}

function docker_info () {
        docker inspect $1
}

function docker_print_logs () {
        docker logs -f $1
}

function docker_copy_file() {
        docker cp $1 $2:/tmp/
}

function docker_commit() {
        docker commit $1 $2
}

function docker_killall () {
        docker stop $(docker ps -a -q);
	docker kill $(docker ps -a -q);
	docker rm $(docker ps -a -q);
}

function docker_cleanup() {
	docker_killall()
	docker rmi $(docker images -q);
}

function docker_search() {
        docker search $1
}

alias dc_killall=docker_killall
alias attach=docker_attach
alias dc_run=docker_create_container
alias dc_cleanup=docker_cleanup
alias dc_commit=docker_commit
alias dc_stats="docker stats"
alias da=docker_attach_quick
alias dc_exec=docker_run
alias dc_info=docker_info
alias dc_cp=docker_copy_file
alias trec=terminal_record
alias curl='curl --progress-bar'

# include Z, yo
. ~/z.sh
