# brewでインストールするものの自動化

本当はhomebrew-caskも対応したいのだけど、特に試してないので自動化はしていない

## TODO homebrew-cask

```sh
$ brew tap phinze/homebrew-cask
$ brew install brew-cask
```

## 実行方法

### 事前準備

- Bundlerをインストールしておく（既存環境を汚さないようにするため）

```sh
$ gem i bundler --no-document
```

### 実行

itamaeのインストール（このリポジトリをそのまま使えばvendorディレクトリにgemはインストールされる）

```sh
$ bundle
```

itamaeの実行

```sh
bundle exec itamae local recipe.rb
```

