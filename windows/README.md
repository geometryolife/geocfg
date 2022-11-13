# Windows configuration

## LLVM

- [下载](https://github.com/llvm/llvm-project/releases)
- 设置环境变量 `LIBCLANG_PATH` 的值为 `C:\Program Files\LLVM\bin`（根据 LLVM 的安装位置选择）

## Blockchain

### Starcoin

- [Repository](https://github.com/starcoinorg/starcoin)

```powershell
# 克隆项目并进入项目根目录
git@github.com:starcoinorg/starcoin.git
cd .\starcoin\

# 执行安装脚本
.\scripts\dev_setup.ps1

# 编译
cargo build --release

# 把编译生成的软件包添加到 Path 环境变量，例如（根据实际路径添加）：
C:\Users\geome\i\starcoin\target\release
```
