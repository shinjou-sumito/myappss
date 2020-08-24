## 工数管理システム
作業の開始時間、終了時間、完了台数を入力することで、一台あたりの作業時間を算出する。
## なぜ開発したのか
繰り返し生産される製品に対し、データを蓄積することにより改善点をつきとめ、業務の効率化をはかる。
## 主要画面のキャプチャ・簡単な説明
<li>新規登録画面</li>

[![Image from Gyazo](https://i.gyazo.com/a24f90cc96eee2f28c4961192b9f0381.png)](https://gyazo.com/a24f90cc96eee2f28c4961192b9f0381)
<li>ログイン画面</li>

[![Image from Gyazo](https://i.gyazo.com/5f7faa98b5824ad5c4c9e918a08bdef4.png)](https://gyazo.com/5f7faa98b5824ad5c4c9e918a08bdef4)
<li>トップ画面</li>

[![Image from Gyazo](https://i.gyazo.com/77b72a4a71bf414e790046e865b083e9.png)](https://gyazo.com/77b72a4a71bf414e790046e865b083e9)
<li>作業入力画面 作業者名 品名 作業内容を入力する</li>

[![Image from Gyazo](https://i.gyazo.com/0b0afbbd96553879f4f6863ac3ff8813.png)](https://gyazo.com/0b0afbbd96553879f4f6863ac3ff8813)
<li>工数入力画面 作業終了を押下する</li>

[![Image from Gyazo](https://i.gyazo.com/b59b82c540f5e80b6921fbce345d44f5.png)](https://gyazo.com/b59b82c540f5e80b6921fbce345d44f5)
<li>作業終了画面 数量を入力</li>

[![Image from Gyazo](https://i.gyazo.com/10c1f41a84b9dbd16120a671a6178719.png)](https://gyazo.com/10c1f41a84b9dbd16120a671a6178719)
<li>トップ画面 作業時間 一台あたり工数を確認できる</li>

[![Image from Gyazo](https://i.gyazo.com/a5e846d63b58528c49355afe120007fb.png)](https://gyazo.com/a5e846d63b58528c49355afe120007fb)
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


