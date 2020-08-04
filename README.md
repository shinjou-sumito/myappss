# Pictweet DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :posts

## posttsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|product_name|string|null: false|
|work_name|string|null: false|
|quantity|integer|null: false|
|comments|text||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user


