# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

export TERM=xterm-256color

# start tmux on console load
tmux attach -t console || tmux new

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git, vi-mode, mercurial)

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else #   export EDITOR='mvim'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scriptig

# zap bookmark manager
if [ -f ~/zap.bash ]; then
  source ~/zap.bash
fi

# wiki backup
if [ -f ~/.wiki-backup.bash ]; then
  source ~/.wiki-backup.bash
fi

# ALIASES
#
#
#
# Ruby aliases
alias first="rvm use 1.9.3@first && rvm current && cd ~/leaderboard"
alias startup="source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh && xmodmap ~/vimkeys"	
plugins=(zsh-syntax-highlighting)
alias rspec="spring rspec"

alias account="rvm use 1.9.3@yoyo-account && rvm current && cd ~/work/yoyo-account"
alias ac="rvm use 1.9.3@yoyo-account && rvm current && cd ~/work/yoyo-account"
alias marketplace="rvm use 1.9.3@marketplace && rvm current && cd ~/work/gasbox-marketplace"
alias mp="rvm use 1.9.3@marketplace && rvm current && cd ~/work/gasbox-marketplace"
alias player="rvm use 1.9.3@marketplace && rvm current && cd ~/work/gasbox-player"
alias pl="rvm use 1.9.3@marketplace && rvm current && cd ~/work/gasbox-player"

alias bs="rvm use 1.9.3@yoyo_bootstrap && rvm current && cd ~/work/yoyo_bootstrap"
alias bss="rvm use 1.9.3@yoyo_bootstrap && rvm current && cd ~/work/yoyo_bootstrap && rails s"
alias bsg="rvm use 1.9.3@yoyo_bootstrap && rvm current && cd ~/work/yoyo_bootstrap && guard"

# mercurial aliases
alias hgc="hg commit -m \""
alias hgs="hg status"
alias hgb="hg branch"
alias hgbr="hg branches"
alias hgu="hg update"
alias hgp="hg push"
alias hgpu="hg pull"
alias hgpb="hg push --new-branch"
alias hgsh="hg shelve"
alias hgus="hg unshelve"
alias hgd="hg diff"

#git aliases
alias gs="git status"
alias gp="git push"
alias gb="git branch"
alias gc="git commit -m \""
alias ga="git add -A"
alias gd="git diff --cached"

# Ssh and deployment
alias bootstage="ssh bootstrap@bootstage.yoyogames.com"
alias bootstrapssh="ssh bootstrap@www.yoyogames.com"
alias bootstrapsshroot="ssh -i ~/.ssh/marketplace_aws.pem mgmtusr@www.yoyogames.com"

alias account1ssh="ssh -i ~/.ssh/marketplace yyaccount@ec2-54-167-43-148.compute-1.amazonaws.com"
alias account1sshroot="ssh -i ~/.ssh/marketplace_aws.pem root@ec2-54-167-43-148.compute-1.amazonaws.com"
alias playerssh="ssh -v  -i ~/.ssh/marketplace player@ec2-54-87-55-78.compute-1.amazonaws.com"
alias playersshroot="ssh -i ~/.ssh/marketplace_aws.pem ubuntu@ec2-54-87-205-187.compute-1.amazonaws.com"
alias playerstaging="ssh gasplayer@straylight.yoyogames.com"

alias account1root="ssh -i ~/.ssh/marketplace_aws.pem ubuntu@ec2-54-167-43-148.compute-1.amazonaws.com"
alias account2root="ssh -i ~/.ssh/marketplace_aws.pem ubuntu@ec2-54-227-63-160.compute-1.amazonaws.com"
alias account3root="ssh -i ~/.ssh/marketplace_aws.pem ubuntu@ec2-54-82-116-237.compute-1.amazonaws.com"
alias account4root="ssh -i ~/.ssh/marketplace_aws.pem ubuntu@ec2-54-146-217-224.compute-1.amazonaws.com"
alias account5root="ssh -i ~/.ssh/marketplace_aws.pem ubuntu@ec2-54-145-62-148.compute-1.amazonaws.com"
alias accountstaging="ssh accounts_staging@straylight.yoyogames.com"

alias marketplacessh="ssh -i ~/.ssh/marketplace gasmarket@ec2-54-87-205-187.compute-1.amazonaws.com"
alias marketplacesshroot="ssh -i ~/.ssh/marketplace_aws.pem ubuntu@ec2-54-87-205-187.compute-1.amazonaws.com"
alias marketplacestaging="ssh gasmarket@straylight.yoyogames.com"

alias deploy="cap staging deploy"
alias deployb="cap staging deploy -s branch="
alias rollback="cap staging deploy:rollback"
alias restart="cap staging unicorn:restart"

#Misc aliases
alias zsh="vim ~/.zshrc"

alias dotbackup="cp ~/.hgrc ~/ubuntu-dotfiles/ \
&& cp -r ~/vimwiki/ ~/ubuntu-dotfiles/ \
&& cp ~/.tmux.conf ~/ubuntu-dotfiles/ \
&& cp ~/.vimrc ~/ubuntu-dotfiles/ \
&& cp ~/.zshrc ~/ubuntu-dotfiles/ \
&& cp ~/zap.bash ~/ubuntu-dotfiles/ \
&& cp -r ~/.bookmarks ~/ubuntu-dotfiles/ \
&& cd ~/ubuntu-dotfiles \
&& git add -A && git commit && git push"

alias dotupdate="cd ~/ubuntu-dotfiles && git pull \
&& cp ~/ubuntu-dotfiles/.vimrc ~/.vimrc \
&& cp ~/ubuntu-dotfiles/.tmux.conf ~/.tmux.conf \
&& cp ~/ubuntu-dotfiles/.hgrc ~/.hgrc \
&& cp ~/ubuntu-dotfiles/.zshrc ~/.zshrc \
&& cp ~/ubuntu-dotfiles/zap.bash ~/zap.bash \
&& cp -r ~/ubuntu-dotfiles/.bookmarks ~/ \
&& source ~/.zshrc"

#vim aliases
alias vimrc="vim ~/.vimrc"
alias vundle="git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"

alias viki="vim ~/vimwiki/index.wiki"
alias vimwiki="vim ~/vimwiki/index.wiki"

# tmux aliases
alias tmuxrc="vim ~/.tmux.conf"
alias tmuxc="tmux attach -t console || tmux"

# ubuntu processes
alias ps="ps -ef | grep"
alias szsh="source ~/.zshrc"
alias svim="sudo vim"

# projects
alias pr="cd ~/projects && ls"
alias projects="cd ~/projects && ls"
alias ex="cd ~/projects/exercism/ruby && ls"
alias prbackup="cd ~/projects && git status && git add -A && git commit \
&& git push"

alias prupdate="cd ~/projects && git pull"

#personal
alias ps="cd ~/personal && ls"
alias personal="cd ~/personal && ls"
alias upm="cd /var/www/upostme && ls"
alias zt="zap to"

# work
alias wk="cd ~/work && ls"
alias work="cd ~/work && ls"

# search in console
alias gr="grep -rnw './' -e \""

# vpn
alias x11="x11vnc -auth guess -forever -usepw"

export PATH=$HOME/bin:$PATH

# set vi mode in terminal
set -o vi
