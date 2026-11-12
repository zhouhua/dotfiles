# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git themes battery common-aliases cp encode64 sudo z zsh-syntax-highlighting  fast-syntax-highlighting zsh-history-substring-search)

fpath=("$HOME/.zfunctions" $fpath)

ZSH_COMPDUMP="$HOME/.cache/zsh/.zcompdump"
source $ZSH/oh-my-zsh.sh

# Remove legacy pygmentize-dependent alias from common-aliases.
# unalias -g P 2>/dev/null

# User configuration

export TERM='xterm-256color'

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set typewritten ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt typewritten

# ZSH_COLORIZE_STYLE="colorful"

unsetopt correct_all
setopt correct

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH=$HOME/.local/bin:$PATH

# pnpm
export PNPM_HOME='/Users/zhouhua/Library/pnpm'
case ":$PATH:" in
  ":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

# source ~/.fzf/shell/zsh-interactive-cd.plugin.zsh


[[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"

[ -f $HOMEBREW_PREFIX/share/forgit/forgit.plugin.zsh ] && source $HOMEBREW_PREFIX/share/forgit/forgit.plugin.zsh

eval $(thefuck --alias)

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# function powerline_precmd() {
#     PS1="$(powerline-shell --shell zsh $?)"
# }

# function install_powerline_precmd() {
#   for s in "${precmd_functions[@]}"; do
#     if [ "$s" = "powerline_precmd" ]; then
#       return
#     fi
#   done
#   precmd_functions+=(powerline_precmd)
# }

# if [ "$TERM" != "linux" -a -x "$(command -v powerline-shell)" ]; then
    # install_powerline_precmd
# fi

# bun completions
[ -s "/Users/zhouhua/.bun/_bun" ] && source "/Users/zhouhua/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
eval "$(/Users/zhouhua/.local/bin/mise activate zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/zhouhua/.cache/lm-studio/bin"

# eval "$(starship init zsh)"

alias vim=nvim
export PATH="$HOME/.local/bin:$PATH"



[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.


# 中科大镜像
# HOMEBREW_BREW_GIT_REMOTE: Homebrew 核心仓库的镜像地址
# HOMEBREW_CORE_GIT_REMOTE: 软件包定义仓库的镜像地址
# HOMEBREW_BOTTLE_DOMAIN: 预编译二进制包的下载地址（这是下载最大的部分）
# HOMEBREW_API_DOMAIN: API 请求地址
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"

# 本机密钥放在 ~/.zshrc.local，不进入仓库。
[ -f "$HOME/.zshrc.local" ] && . "$HOME/.zshrc.local"

# Go binaries
export PATH="$HOME/go/bin:$PATH"

alias claude-mem='bun "/Users/zhouhua/.claude/plugins/marketplaces/thedotmack/plugin/scripts/worker-service.cjs"'

# Android / React Native / Expo (袋鼠AI选房 mobile 真机调试)
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$JAVA_HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH"

# >>> clash-proxy-helper >>>
# Rule-mode Clash: do NOT auto-export HTTP(S)_PROXY.
# When 7897 is up, point git→GitHub at mixed-port; when proxy is off, clear it so DIRECT works.
__clash_proxy_on() {
  if nc -z -G 1 127.0.0.1 7897 >/dev/null 2>&1; then
    export https_proxy=http://127.0.0.1:7897
    export http_proxy=http://127.0.0.1:7897
    export all_proxy=socks5://127.0.0.1:7897
    export HTTPS_PROXY=$https_proxy HTTP_PROXY=$http_proxy ALL_PROXY=$all_proxy
    export no_proxy=localhost,127.0.0.1,::1,192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,*.local
    export NO_PROXY=$no_proxy
  fi
}
__clash_proxy_off() {
  unset http_proxy https_proxy all_proxy HTTP_PROXY HTTPS_PROXY ALL_PROXY no_proxy NO_PROXY
}
__clash_sync_git_proxy() {
  if nc -z -G 1 127.0.0.1 7897 >/dev/null 2>&1; then
    git config --global http.https://github.com.proxy http://127.0.0.1:7897
    git config --global https.https://github.com.proxy http://127.0.0.1:7897
    git config --global http.https://gist.github.com.proxy http://127.0.0.1:7897
    git config --global https.https://gist.github.com.proxy http://127.0.0.1:7897
  else
    git config --global --unset-all http.https://github.com.proxy 2>/dev/null
    git config --global --unset-all https.https://github.com.proxy 2>/dev/null
    git config --global --unset-all http.https://gist.github.com.proxy 2>/dev/null
    git config --global --unset-all https.https://gist.github.com.proxy 2>/dev/null
    true
  fi
}
[[ -o interactive ]] && __clash_sync_git_proxy
# <<< clash-proxy-helper <<<

# >>> cn-direct-mirrors >>>
# Faster package downloads when Clash is off / traffic is DIRECT
export GOPROXY="${GOPROXY:-https://goproxy.cn,direct}"
export GOSUMDB="${GOSUMDB:-sum.golang.google.cn}"
export UV_INDEX_URL="${UV_INDEX_URL:-https://mirrors.cloud.tencent.com/pypi/simple}"
# <<< cn-direct-mirrors <<<
