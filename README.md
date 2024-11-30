# プロジェクトタイトル

-  ロボットシステム学の課題１

##　概要

- このプログラムは入力された秒数を必要に応じて時間,分,秒に変換するスクリプトです。

##　使用方法

- 1.リポジトリをクローン。
  git clone https://github.com/nunomurayamato/TimeConverter.git
- 2.ディレクトリに移動。
  cd TimeConverter
- 3.必要に応じて実行権限を付与。
  chmod +x timeconversion
- 4.ターミナルから以下のコマンドを実行。
  echo "計算したい時間(秒)"　| ./timeconversion

## 実行例

- echo 5678 | ./timeconversion
  1時間34分38秒
- echo 456 | ./timeconversion
  7分36秒
- echo 45 | ./timeconversion
  45秒   

## テスト方法

- 1.ターミナルから以下のコマンドを実行。
  ./test.bash
- 2.テストに成功すると以下のメッセージが表示されます。
  OK
- 3.テストに失敗すると以下のメッセージのように表示されます。
  ()行目が違うよ

## 動作環境

- OS:Linux,macOS
- Python:Python3.7, 3.8, 3.9, 3.10

## ライセンス

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます.
- © 2024 yamato nunomuria 
