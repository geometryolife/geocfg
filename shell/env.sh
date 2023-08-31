# export EDITOR=hx
# export EDITOR=nvim
export EDITOR=lvim
export HELIX_RUNTIME="$HOME/i/helix/runtime"

export PATH=$HOME/.local/bin:$PATH

export XDG_CONFIG_HOME=$HOME/.config
export LOCALBIN=$XDG_CONFIG_HOME/bin
export PATH=$PATH:$LOCALBIN

export LOCALPROG=$HOME/prog
export PATH=$PATH:$LOCALPROG/bin
export PATH=$PATH:$LOCALPROG/node/bin
export PATH=$PATH:$LOCALPROG/go/bin
export PATH=$PATH:$LOCALPROG/nvim/bin
export PATH=$PATH:$LOCALPROG/clash
export PATH=$PATH:$LOCALPROG/picom/bin
export PATH=$PATH:$LOCALPROG/telegram

export PATH=$HOME/.cargo/bin:$PATH
export CMAKE_PREFIX_PATH=/home/joe/prog/llvm-project-16/build-release
export CLANG_INCLUDE_DIRS=/home/joe/prog/llvm-project-16/build-release/bin
export PATH=$CLANG_INCLUDE_DIRS:$PATH
# export PATH=$CMAKE_PREFIX_PATH:$PATH

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export RANGER_LOAD_DEFAULT_RC=False
