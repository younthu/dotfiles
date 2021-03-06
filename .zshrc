# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export LC_CTYPE="UTF-8"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump git osx rake ruby  wd urltools docker web-search zsh-autosuggestions)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

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
alias dp="docker ps"
alias dpa="docker ps -a"
alias rc="rails c"
alias rs="rails s"
alias tick2time="node -e 'console.log(Date(process.argv[2]))'"
alias time2tick="node -e 'console.log(Date(process.argv[2]))'"
alias r251="rvm use 2.5.1"
alias rn="react-native"
alias rnri="react-native run-ios"
alias rnra="react-native run-android"
alias dpr1="docker exec -it `dp | awk 'NR==2 {print $1}'` bash"
alias dpr2="docker exec -it `dp | awk 'NR==3 {print $1}'` bash"
alias dpr3="docker exec -it `dp | awk 'NR==4 {print $1}'` bash"
alias dpr4="docker exec -it `dp | awk 'NR==5 {print $1}'` bash"
alias sat="source activate tensorflow"
alias jn="jupyter notebook"
alias bi="bundle install"
alias sedi="sed -i ''"
alias ticknow="ruby -e 'p Time.now.to_i'" # ticks start from 1970

export HOMEBREW_GITHUB_API_TOKEN="274de30505d95bd2b7da838c22279342b38dbc3f"

# logo and some sentence
#chuck_cow
# say a sentence randomly
echo "*********毒鸡汤**********"
# -e 转义换行和颜色控制,\033[32m 打印绿色字符
echo -e "\033[32m" `curl -s http://rainbow.ilibrary.me/api/rainbow/random | jq '.sentence'`

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:~/.rvm/bin:~/.vimpkg/bin:$PATH"

# for Jupyter notebook, https://github.com/jupyter/notebook/issues/2438
BROWSER=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
export BROWSER

# proxy for temrinal, shadowsocks + polipo
alias hp="http_proxy=http://localhost:8123 https_proxy=http://localhost:8123" 
alias hps="https_proxy=http://localhost:8123" 

# alias for task -idea
alias taski='task -idea'

# chrome alias
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# make sure use brew installed php instead of pre-installed php
PATH="/usr/local/sbin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#------- homebrew国内加速
# 替换 Homebrew
git -C "$(brew --repo)" remote set-url origin https://mirrors.ustc.edu.cn/brew.git

# 替换 Homebrew Core
git -C "$(brew --repo homebrew/core)" remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git

# 替换 Homebrew Cask
git -C "$(brew --repo homebrew/cask)" remote set-url origin https://mirrors.ustc.edu.cn/homebrew-cask.git
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
#------ end of homebrew国内加速

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/i532140/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/i532140/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/i532140/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/i532140/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# android environment,https://reactnative.dev/docs/environment-setup
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# ant
export ANT_HOME=/usr/local/Cellar/ant/1.10.8_1/libexec/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

setopt no_nomatch
