# Path to your oh-my-zsh installation.
export ZSH=/home/mugur/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
bindkey -v
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
plugins=(git, vi-mode)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else #   export EDITOR='mvim'
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
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripti
# Ruby aliases
alias first="rvm use 1.9.3@first && rvm current && cd ~/leaderboard"
alias startup="source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh && xmodmap ~/vimkeys"	
plugins=(zsh-syntax-highlighting)
alias bootstrap="rvm use 1.9.3@yoyo_bootstrap && rvm current && cd ~/work/yoyo_bootstrap"
alias account="rvm use 1.9.3@yoyo-account && rvm current && cd ~/work/yoyo-account"
alias bootstage="ssh bootstrap@bootstage.yoyogames.com"
alias marketplace="rvm use 1.9.3@marketplace && rvm current && cd ~/work/gasbox-marketplace"
alias rspec="spring rspec"


# mercurial aliases
alias hgc="hg commit -m \""
alias hgs="hg status"
alias hgb="hg branch"
alias hgbr="hg branches"
alias hgu="hg update"
alias hgp="hg push"
alias hgpb="hg push --new-branch"
alias hgsh="hg shelve"
alias hgus="hg unshelve"

#git aliases
alias gs="git status"
alias gp="git push"
alias gc="git commit -am \""
alias ga="git add -A"
alias gb="git branch"
alias gco="git checkout"

# Ssh and deployment
alias yyaccount="ssh -i ~/.ssh/marketplace yyaccount@ec2-54-167-43-148.compute-1.amazonaws.com"
alias rootaccount="ssh -i ~/.ssh/marketplace_aws.pem root@ec2-54-167-43-148.compute-1.amazonaws.com"
alias deploy="cap staging deploy"
alias deployb="cap staging deploy -s branch="
alias rollback="cap staging deploy:rollback"
alias restart="cap staging unicorn:restart"

#Misc aliases
alias zsh="gvim ~/.zshrc"
alias sources="source ~/.vimrc && source ~/.zshrc"
alias dotbackup="cp ~/.vimrc ~/ubuntu-dotfiles/ && cp ~/.zshrc ~/ubuntu-dotfiles/ &&  cp ~/.vim/bundle/snipMate/snippets/javascript.snippets ~/ubuntu-dotfiles/javascript.snippets &&   cp ~/.vim/bundle/snipMate/snippets/css.snippets ~/ubuntu-dotfiles/css.snippets && cp ~/.vim/bundle/snipMate/snippets/html.snippets ~/ubuntu-dotfiles/html.snippets && cp ~/.vim/bundle/snipMate/snippets/ruby.snippets ~/ubuntu-dotfiles/ruby.snippets && cd ~/ubuntu-dotfiles && git add -A && git commit -m \"backup\" && git push"

#vim aliases
alias vimrc="gvim ~/.vimrc"
alias vundle="git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"

# ubuntu processes
alias ps="ps -ef | grep"
alias szsh="source ~/.zshrc"
alias sgvim="sudo gvim"
alias rbsnippets="gvim ~/.vim/bundle/snipMate/snippets/ruby.snippets"
alias jssnippets="gvim ~/.vim/bundle/snipMate/snippets/javascript.snippets"
alias htmlsnippets="gvim ~/.vim/bundle/snipMate/snippets/html.snippets"
alias csssnippets="gvim ~/.vim/bundle/snipMate/snippets/css.snippets"
alias sapti="sudo apt-get install"

# amazon webserver connect
alias aws="ssh -i \"server-connect.ppk\" ubuntu@54.79.126.208"
