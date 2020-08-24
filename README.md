# README
## 工数管理システム
作業の開始時間、終了時間、完了台数を入力することで、一台あたりの作業時間を算出する。
## なぜ開発したのか
繰り返し生産される製品に対し、データを蓄積することにより改善点をつきとめ、業務の効率化をはかる。
## 主要画面のキャプチャ・簡単な説明
<ul>トップ画面</ul>
[![Image from Gyazo](https://i.gyazo.com/77b72a4a71bf414e790046e865b083e9.png)](https://gyazo.com/77b72a4a71bf414e790046e865b083e9)


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


