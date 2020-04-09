# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

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




* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
