# Time Converter
![test](https://github.com/nunomurayamato/robosyskadai1/actions/workflows/test.yml/badge.svg)

## プロジェクトタイトル

-  ロボットシステム学の課題１

## 概要

- このプログラムは入力された秒数を必要に応じて時間,分,秒に変換するスクリプトです。

## 使用方法

- 1.リポジトリをクローン。  
  `$git clone https://github.com/nunomurayamato/robosyskadai1.git`  
- 2.ディレクトリに移動。  
  `$cd TimeConverter`  
- 3.必要に応じて実行権限を付与。  
  `$chmod +x timeconversion`  
- 4.ターミナルから以下のコマンドを実行。  
  `$echo "計算したい時間(秒)"　| ./timeconversion`  

## 実行例

- `$echo 5678 | ./timeconversion`  
  1時間34分38秒  
- `$echo 456 | ./timeconversion`  
  7分36秒  
- `$echo 45 | ./timeconversion`  
  45秒  

## 必要なソフトウェア

- Python:テスト済みバージョン3.7, 3.8, 3.9, 3.10

## テスト環境

- Ubuntu 20.04

## ライセンス

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます.
- © 2024 yamato nunomuria 

