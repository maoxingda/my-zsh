# login airflow server
alias sdaf='ssh sdaf'
alias pdaf='ssh pdaf'
alias jsvr='ssh jpsvr'

# doris
alias sdd='mycli mysql://doris:PE7e8jg__WQWLZiVv.rNj9df@172.24.31.99:6033/rs_ads'
alias pdd='mycli mysql://report:feFKyUCta6jmfXxmFzPfXGQN@10.128.1.220:6033/rs_ads'

# aliases
alias wl='wc -l'
alias xs='rsync -avz'
alias tf='tail -f'
alias ssl='screen -ls'
alias ssr='screen -r'
alias sss='screen -S'

## list files
alias xl='exa -lh --git --time-style long-iso'
alias xla='xl -a'
alias xlt='xl -snew'
alias xls='xl -s size'
alias xls='xl -s size'
alias xltr='xl -T'

## docker
alias dps='docker ps'
alias dpa='docker ps --all'
alias dbd='docker build'
alias drun='docker run'
alias dimg='docker image'
alias drm='docker rm -f'

## copy current working directory to clipboard
alias cpd='pwd|pbcopy'

## grep git aliases
alias xg='grep -iE'
alias ag='alias | xg git | xg'

# misc aliases
alias condaa='conda activate'

# export variables
export AIRFLOW_HOME=~/airflow
export HOMEBREW_NO_AUTO_UPDATE=true
export PATH=~/bin:/usr/local/opt/mysql@5.7/bin:${PATH}
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home
export GITLAB_PRIVATE_TOKEN=_ZfAqeoAMmhw16frkuuy
export REDSHIFT_SANDBOX=bi:XTB^^kc999t@bi-sandbox.c5dfy2rr84za.cn-northwest-1.redshift.amazonaws.com.cn:5439/beta
export REDSHIFT_PROD=bi_sql_executor:CLwHVGEDbwrwfrDiUiLMYV8t@bi-prod-hc.c5whpuwq7rpp.cn-northwest-1.redshift.amazonaws.com.cn:5439/prod
# export DBT_PROFILES_DIR=/Users/maoxd/code/dbt-data-transform
export DBT_PROFILES_DIR=~/.dbt

HADOOP_HOME=/Users/maoxd/Downloads/hadoop-3.1.3
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin
export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_YARN_HOME=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin

# >>> oh my zsh initialize >>>

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# shellcheck disable=SC2034
ZSH_THEME="kphoen"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# shellcheck disable=SC2034
plugins=(
    git
    sudo
    docker
    history
    extract
    autojump
    colored-man-pages
    zsh-interactive-cd
    zsh-autosuggestions
    zsh-syntax-highlighting
    history-substring-search
)

source "$ZSH"/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# bindkey '^P' history-substring-search-up
# bindkey '^N' history-substring-search-down
# bindkey '^E' autosuggest-execute

# <<< oh my zsh initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/maoxd/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
# shellcheck disable=SC2181
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/maoxd/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/maoxd/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/maoxd/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/Users/maoxd/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# >>> aws s3 cli initialize >>>

autoload -Uz compinit && compinit

# zsh 5.0.2 (x86_64-redhat-linux-gnu) not support this option
# setopt GLOBSTARSHORT

for fun in /Users/maoxd/open-source/my-aws/s3/**/*.zsh; do
    . "${fun}"
done

# <<< aws s3 cli initialize <<<
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

zstyle ':completion:*' menu select
fpath+=~/.zfunc

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

function xconda() {
    conda create -n $1 python=3.8 -y
}
