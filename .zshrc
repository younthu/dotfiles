# Path to your oh-my-zsh installation.
export ZSH=/Users/andrewy/.oh-my-zsh
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
plugins=(autojump git osx rake ruby  wd chucknorris urltools docker web-search zsh-autosuggestions)

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

export HOMEBREW_GITHUB_API_TOKEN="d1281fca218612dc1d7047ddfb1efeb9b36353e8"

export NVM_DIR="/Users/andrewy/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# logo and some sentence
chuck_cow

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/andrewy/.rvm/bin:/Users/andrewy/.vimpkg/bin:$PATH"

# android sdk
export ANDROID_HOME=/usr/local/Cellar/android-sdk/24.4.1_1
export ANDROID_NDK=/Users/andrewy/android-ndk/android-ndk-r10e

# groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# CUDA, http://docs.nvidia.com/cuda/cuda-installation-guide-mac-os-x/#axzz4gBuiCr7c
export PATH=/Developer/NVIDIA/CUDA-8.0/bin${PATH:+:${PATH}}
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-8.0/lib${DYLD_LIBRARY_PATH:+:${DYLD_LIBRARY_PATH}}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andrewy/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/andrewy/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andrewy/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/andrewy/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# added by Anaconda3 4.3.1 installer
export PATH="/Users/andrewy/anaconda/bin:$PATH"

# for Jupyter notebook, https://github.com/jupyter/notebook/issues/2438
BROWSER=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
export BROWSER

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# for google chromium source building,depot_tools
export PATH=$PATH:/Users/andrewy/sourcecode/github/depot_tools

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

# display my famous saying
echo '''
	1. 每天早上做规划，做完规划再开始干活
        2. 事情分出去，一个人精力有限，不能所有事情都自己做
        3. 任何任务要足够小，能快速执行，要方便验收
        4. 长远规划非常重要
        5. 每半年检查一下自己目标，及时调整
        6. 写日志，运营微博，影响力非常重要。
	7. 避免亲力亲为，除非出了很大的问题。最重要的是把控方向，而不是深入细节。
	8. 每个月1号列出哪些事情不该自己做。然后把不该自己做的事情找人帮忙做。
	9. 同时参与的项目不能操过2个，其它的都得想办法分出去给别人做。
	10. 别看fuliba和qiushibaike
	11. 关掉微信
	12. 切忌同行相轻。人总是会同行相轻, 切忌切忌

	
'''

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
. /usr/local/etc/profile.d/z.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
