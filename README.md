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

安装 `pynvim` 给 Neovim 提供 Python 特性：

```shell
/usr/bin/python3 -m pip install pynvim
```

检查 Neovim 的健康状况：

```vim
:checkhealth
```

#### Configuration

- 我的 VimL 配置文件在 [nvim](https://github.com/geometryolife/nvim)
  - coc 插件需要使用 `yarn`，需要安装 [Node](#Node)
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

## Tools

### lazygit

首先安装 [go 语言](#Go)

```shell
git clone https://github.com/jesseduffield/lazygit.git
cd lazygit
go install
```

### ranger

Use the package manager of your operating system to install ranger. You can also install ranger through PyPI: `pip install ranger-fm`.

## Language

### Go

- 下载 [go](https://go.dev/) 并放在安装路径：

```shell
~/prog
```

### Rust

- [Rust](https://www.rust-lang.org/)

- [Rust for WSL](https://www.rust-lang.org/)

```shell
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Node

- 下载 [node](https://nodejs.org/en/download/) 并放在安装路径：

```shell
~/prog
```

#### npm

- [Node Package Manager](https://en.wikipedia.org/wiki/Npm_(software))
- [NPM 使用介绍](https://www.runoob.com/nodejs/nodejs-npm.html)

```shell
# 安装依赖到（当前的执行命令）本地的 node_modules 目录
npm install

# 全局安装
npm install -g
```

使用 `npm` 全局安装依赖，会将包安装到 `node` 安装目录中，例如：

```shell
# 我的 node 安装的位置
/home/joe/prog/node

# 全局安装的依赖位置
/home/joe/prog/node/lib/node_modules
```

- 使用 `--production` 选项标志或设置 `NODE_ENV` 环境变量为 `production` 时，不安装 `devDependencies` 中的模块。
- 在 `NODE_ENV` 被设置为 `production` 的情况下，可以使用 `--production=false` 来同时安装 `dependencies` 和 `devDependencies` 中的模块。

- `npm run` 从包的 `scripts` 对象运行任意命令。

### Python

- [Homepage](https://www.python.org/)

#### venv 创建虚拟环境

```shell
# 创建
python3 -m venv <ENV_DIR>

# 激活
source <ENV_DIR>/bin/activate

# 退出
deactivate
```

#### Poetry 依赖管理工具

Python packaging and dependency management made easy.

- [Homepage](https://python-poetry.org/)
- [Repository](https://github.com/python-poetry/poetry)

```shell
# 安装
curl -sSL https://install.python-poetry.org | python3 -
```

### Toml

- 安装语言服务器
  - [cannot be automatically formatted for Helix editor #337](https://github.com/tamasfe/taplo/issues/337)

```shell
# 目前编译默认不支持 lsp，需手动开启
git clone https://github.com/tamasfe/taplo.git
cargo install taplo-cli --locked --features lsp
```
