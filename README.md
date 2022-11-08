# geocfg
This is geometryolife’s configuration.

## Editor

### Helix

```shell
git clone https://github.com/helix-editor/helix
cd helix
cargo install --path helix-term
```

<++>

### Neovim

- [Download the Neovim](https://github.com/neovim/neovim/releases)

```shell
# Extract
tar xzvf nvim-linux64.tar.gz
# Run
./nvim-linux64/bin/nvim
```

### Emacs

## Proxy

### Git Proxy

```bash
# 设置 http 代理
git config --global http.proxy http://127.0.0.1:7890
```

### 终端设置代理

```
# 终端代理设置，使用 ep 和 up 来启用/禁用
alias ep='export http_proxy=http://127.0.0.1:7890 && export https_proxy=https://127.0.0.1:7890 && export socks5_proxy=socks5://127.0.0.1:7891'
alias up='unset http_proxy && unset https_proxy && unset socks5_proxy'
```

