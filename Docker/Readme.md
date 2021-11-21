Docker-mobirc

## コレは何？

mobircをDockerに封じ込めて利用するための何か。
簡単に仕込めます。
とりあえず動きます。


## 仕込み方

dockerをインストールして使える環境を用意します。

configは先に調整しておく必要があります。

conf/config.json

このファイルはマウント利用するのでいつでも変更できます。

## ビルド
ディレクトリで以下とかのコマンドで錬成

docker build -t mobirc-img .

エラーなく完了したら次のような感じで実行です。

docker run -p 16667:16667 -v ./conf:/etc/mobirc --name=mobirc-myuser -d mobirc-img

ブラウザで
 http://IP:16667 にアクセスするとログイン画面にいけます

あとのdockerの詳しい使い方はググってください。
