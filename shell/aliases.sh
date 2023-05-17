alias h='cd'
alias i='cd $HOME/i'
alias o='cd ~/other'
alias p='cd ~/prog'

alias m='make clean install'

alias c='clear'
alias l='ls --color=auto -lah'
alias la='ls -A'
alias ll='ls -CF'
alias ls='ls --color=auto'

alias py='python'
alias ipy='ipython'
alias av='source venv/bin/activate'
alias dv='deactivate'

# Proxy
alias ep='export http_proxy=http://127.0.0.1:7890 && export https_proxy=http://127.0.0.1:7890 && export socks5_proxy=socks5://127.0.0.1:7891'
alias up='unset http_proxy && unset https_proxy && unset socks5_proxy'

# Tools
alias ra='ranger'
alias lg='lazygit'
alias n='neofetch'

# Editor
alias vi='nvim'
alias e='emacs -nw'
alias ee='emacs'
alias em='emacs -Q -l ~/.emacs.d/init-mini.el'

# Tmux
alias t='tmux'
alias ta='tmux attach-session -t'
alias td='tmux detach-client'
alias tk='tmux kill-session -t'
alias tl='tmux ls'
alias tn='tmux new-session -s'
alias tr='tmux rename-session -t'
alias ts='tmux switch-client -t'
alias tt='tmux attach-session'


# ░█▀▀░▀█▀░▀█▀░░░█▀█░█░░░▀█▀░█▀█░█▀▀
# ░█░█░░█░░░█░░░░█▀█░█░░░░█░░█▀█░▀▀█
# ░▀▀▀░▀▀▀░░▀░░░░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀

alias ga='git add'
alias gaa='git add --all'
alias gapa='git add --patch'
alias gau='git add --update'
alias gav='git add --verbose'
alias gap='git apply'
alias gapt='git apply --3way'

alias gb='git branch'
alias gbD='git branch -D'
alias gba='git branch -a'
alias gbd='git branch -d'

alias gc!='git commit -v --amend'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcn!='git commit -v --no-edit --amend'
alias gcb='git checkout -b'
alias gcf='git config --list'

alias gcmsg='git commit -m'
alias gco='git checkout'

alias gd='git diff'

alias gf='git fetch'

alias ghh='git help'

alias gl='git pull'
alias glg='git log --stat'
alias glgg='git log graph'
alias glgp='git log --stat -p'
alias glo='git log --oneline --decorate'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'

alias gm='git merge'

alias gp='git push'
alias gpd='git push --dry-run'
alias gpf!='git push --force'
alias gpf='git push --force-with-lease'

alias gr='git remote'
alias gra='git remote add'
alias grm='git rm'
alias grmc='git rm --cached'
alias grs='git restore update'
alias grup='git remote'
alias grv='git remote -v'

alias gsb='git status -sb'
alias gsh='git show'
alias gss='git status -s'
alias gst='git status'

alias gsta='git stash push'
alias gstaa='git stash apply'
alias gstall='git stash --all'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias gsw='git switch'
alias gswc='git switch -c'

alias gts='git tag -s'
alias gtv='git tag | sort -V'

# Docker
alias dc='docker container'
alias dcec='docker container exec -it'
alias dcl='docker container ls'
alias dcla='docker container ls -a'
alias dcrm='docker container rm'
alias dcrui='docker container run -it'
alias dcsp='docker container stop'
alias dcsr='docker container start'
alias dcst='docker container stats'
alias dil='docker image ls'
# alias <++>='<++>'
