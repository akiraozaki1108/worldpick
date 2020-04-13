# README

・アプリ名
WorldPick

・概要
ツイート、いいね機能、コメント機能、

・本番環境

  デプロイ先
  https://worldpick.herokuapp.com/
  

  テストアカウント
  ID: test@test
  PW: testtest


・制作背景

  海外で一人旅をする中様々な写真を撮りました。
   写真と感情を一緒に保存できるようなアプリを作りたいと思い、その時の感情を保存するためのアプリです。
  

・DEMO

  https://gyazo.com/44a456b91f14001db36b1c4f9a8e49e6

・工夫したポイント
  
  シンプルな機能を使えるようにしている。

・使用技術
HTML,CSS,JavaScript

・課題や今後実装したい機能

  国事のタグ付機能実装

・DB設計

* Database creation

World picks  DB設計
## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
|text|string|null: false|
|image|text|null: false|
|user_id|integer|


### Association
- belong_to :user
- has_many :comments

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|encryp_password|string|
|nickname|string|


### Association
- has_many :tweets
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|tweet_id|integer|
|text|text|

### Association
- belongs_to :user
- belongs_to :tweet

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key: true|
|tweet_id|integer|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :tweet