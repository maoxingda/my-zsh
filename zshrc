# --------User specification configurations

# aliases
alias xll='exa -l'
alias xgrep='grep -iE'
alias rsync='rsync -avz'

alias airflowstat='ps -ef | xgrep -v grep | xgrep "airflow-webserver|DagFileProcessorManager"'

# export variables
export AIRFLOW_HOME=~/airflow
export HOMEBREW_NO_AUTO_UPDATE=true
export PATH="/Users/maoxd/bin:/usr/local/opt/mysql@5.7/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home

# functions tests
function foo() {
    for i; do
        echo "$i"
    done
}

# aws s3 cli helper functions
function s3() {
    if [[ $s3_cli_on == "" ]]; then
        s3_cli_on="True"
        OLD_PS1=$PS1
        PS1="%{${fg_bold[red]}%}┌[%{${fg_bold[red]}%}aws-s3-cli%{${fg_bold[red]}%}]
└> % %{$reset_color%}"
    else
        s3_cli_on=""
        PS1=$OLD_PS1
    fi
}

function s3ls() {
    local s3Uri=$1
    aws s3 ls "$s3Uri"
}

function s3upload() {
    local localPath=$1
    local s3Uri=$2
    shift 2
    aws s3 cp "$localPath" "s3://$s3Uri" "$@"
}

function s3download() {
    local s3Uri=$1
    local localPath=$2
    if [[ "${localPath}" != "-" && "${localPath}" == "" || "${localPath}" == "." ]]; then
        localPath="$PWD"
    fi
    shift 2
    aws s3 cp "s3://${s3Uri}" "${localPath}" "$@"
}

function s3remove() {
    local s3Uri=$1
    shift 2
    aws s3 rm "s3://$s3Uri" "$@"
}

# --------oh-my-zsh configurations

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"

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
plugins=(
    cp
    git
    sudo
    extract
    autojump
    colored-man-pages
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

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/maoxd/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
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

# must be at the end
# enable aws cli command & options auto completion
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
compinit
complete -C '/usr/local/bin/aws_completer' aws
