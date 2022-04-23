alias i='cd $HOME/i'

# Tools
alias ra='ranger'
alias lg='lazygit'

# Editor
alias vi='nvim'
alias e='emacs -nw'
alias ee='emacs'

# Tmux
alias t='tmux'
alias tl='tmux ls'
alias tn='tmux new -s'
alias tt='tmux attach'
alias ta='tmux attach -t'
alias td='tmux detach'
alias tk='tmux kill-session -t'
alias ts='tmux switch -t'
alias tr='tmux rename-session -t'


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

