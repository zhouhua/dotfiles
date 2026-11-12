#!/bin/sh
set -eu

cd "$(dirname "$0")"

if ! command -v stow >/dev/null 2>&1; then
  echo "需要先安装 GNU Stow：brew install stow" >&2
  exit 1
fi

stow --restow zsh bash git starship npm nvim

# Stow 默认忽略名为 .gitignore 的文件，Neovim 这份需要单独补上。
ln -sfn ../../code/dotfiles/nvim/.config/nvim/.gitignore "$HOME/.config/nvim/.gitignore"

echo "已链接到 $HOME"
