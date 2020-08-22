# README
![工数管理システム]([![Image from Gyazo](https://i.gyazo.com/28c5da856ac4133a5a95995cffe66f90.png)](https://gyazo.com/28c5da856ac4133a5a95995cffe66f90)
# myappss DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :posts

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|product_name|string|null: false|
|work_name|string|null: false|
|quantity|integer|null: false|
|text|text||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user


