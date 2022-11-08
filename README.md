# geocfg

This is geometryolife’s configuration.

## Editor

### Helix

```shell
# 安装
git clone https://github.com/helix-editor/helix
cd helix
cargo install --path helix-term

# 检查
hx --health
```

#### Copy and Paste with system clipboard

Neither Space-p nor Space-y is working.

- On Linux

In an X session, check that either the `xclip` or `xsel` package is installed on your system and either of these commands is in your `PATH`.

In a Wayland session, check that the `wl-clipboard` package is installed on your system and the provided `wl-copy` and `wl-paste` commands are in your `PATH`.

- On WSL

Check that `win32yank.exe` is in your `Windows PATH`.

Either download the [win32yank binaries](https://github.com/equalsraf/win32yank/releases) manually or use scoop (`scoop install win32yank`).

### Neovim

- [Download the Neovim](https://github.com/neovim/neovim/releases)

```shell
# Extract
tar xzvf nvim-linux64.tar.gz
# Run
./nvim-linux64/bin/nvim
```

#### Configuration

- 我的 VimL 配置文件在 [nvim](https://github.com/geometryolife/nvim)
- Lua 配置 [geonv](https://github.com/geometryolife/geonv)

#### 插件管理器

- [vim-plug](https://github.com/junegunn/vim-plug)

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

<!-- ### Emacs -->

## Proxy

### Git Proxy

```shell
# 设置 http 代理
git config --global http.proxy http://127.0.0.1:7890
```

### 终端设置代理

```shell
# 终端代理设置，使用 ep 和 up 来启用/禁用
alias ep='export http_proxy=http://127.0.0.1:7890 && export https_proxy=https://127.0.0.1:7890 && export socks5_proxy=socks5://127.0.0.1:7891'
alias up='unset http_proxy && unset https_proxy && unset socks5_proxy'
```

## Git tools

### lazygit

```shell
git clone https://github.com/jesseduffield/lazygit.git
cd lazygit
go install
```

## Language

### Go

- 下载 [go](https://go.dev/) 并放在安装路径：

```shell
~/prog
```
