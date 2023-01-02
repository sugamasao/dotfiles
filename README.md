# 環境構築メモ

## AppStore

- Xcode
- Keynote
- Skitch
- CotEditor
- Kindle

## 野良インストール

- VSCode
  - https://azure.microsoft.com/ja-jp/products/visual-studio-code/
- Google Chrome
  - https://www.google.co.jp/chrome/
- iTerm2
  - http://iterm2.com/
- Dropbox
  - https://www.dropbox.com/ja/
- Docker Desktop
  - https://www.docker.com/products/docker-desktop/
- RubyMine
  - https://www.jetbrains.com/ja-jp/ruby/
## brew

brew 本体のインストールを行う

- http://brew.sh/index_ja.html

brew でインストールするツール群はitamaeで実行する。app_setupディレクトリを参照のこと

## Ruby

rbenvを使用する。以下のツール群を **git** でインストールする（brewではない）。

- https://github.com/sstephenson/rbenv
- https://github.com/sstephenson/ruby-build
- https://github.com/rkh/rbenv-update

## Node

nodenvを使用する。以下のツール群を **git** でインストールする（brewではない）。

- https://github.com/nodenv/nodenv
- https://github.com/nodenv/node-build
- https://github.com/nodenv/nodenv-update

## このリポジトリのファイルを有効にするには

```sh
$ git clone https://github.com/sugamasao/dotfiles ~/dotfiles
$ cd dotfiles
$ sh install_brew_package.sh
$ sh setup.sh
```

