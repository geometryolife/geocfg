# Trouble shooting

## Git 的 22 端口超时

```shell
ssh -T git@github.com

ssh: connect to host github.com port 22: Connection timed out
```

当 GitHub 防火墙出现拒绝连接时，`ssh` 无法通过 `22` 端口进行访问，这时可以通过 `HTTPS` 端口进行 SSH 访问。

编辑 `~/.ssh/config` 文件，添加以下内容：

```shell
Host github.com
    Hostname ssh.github.com
    Port 443
    User git
```

此时 SSH 就可以通过 `443` 端口访问了，而不是原来的 `22` 端口。

参考链接：

- [Using SSH over the HTTPS port](https://docs.github.com/en/authentication/troubleshooting-ssh/using-ssh-over-the-https-port)
