# dotfiles

macOS 上的个人配置备份。用 [GNU Stow](https://www.gnu.org/software/stow/) 把每个软件的配置目录符号链接到主目录，改主目录里的文件就是在改这个仓库。

这个布局和 [webpro/dotfiles](https://github.com/webpro/dotfiles)、[Gabb-c/dotfiles](https://github.com/Gabb-c/dotfiles/blob/main/README.md) 一样：仓库里每个顶层目录是一个包，包内路径相对 `$HOME`。

```text
dotfiles/
├── zsh/.zshrc
├── bash/.bashrc
├── git/.gitconfig
├── git/.config/git/ignore
├── starship/.config/starship.toml
├── npm/.npmrc
└── nvim/.config/nvim/
```

`stow zsh` 会得到 `~/.zshrc -> ~/code/dotfiles/zsh/.zshrc`。

## 在一台新机器上使用

```sh
git clone git@github.com:zhouhua/dotfiles.git ~/code/dotfiles
cd ~/code/dotfiles
brew install stow
./install.sh
```

已有同名文件时 Stow 会停下来，不会覆盖。先挪走旧文件，再执行 `./install.sh`。

## 纳入新的配置

以 Vim 为例：

```sh
mkdir -p vim
# 把配置放到和主目录相同的相对路径，例如 vim/.vimrc
stow vim
git add vim
git commit -m "Track vim config"
git push
```

## 不进仓库的内容

- API key 放在 `~/.zshrc.local`。`.zshrc` 会在文件存在时 source 它。
- `~/.ssh/config` 含有服务器地址，不纳入。
- 密钥、私钥、token、密码不要提交。
