## 工数管理システム
製造業に携わる人が、製造現場で作業の開始時間、終了時間、完了台数を入力することで、一台あたりかかる作業時間（工数）を算出する。
## なぜ開発したのか
少量多品種で手作業をしなければならない、繰り返し生産される製品に対し、データを収集蓄積することで各工程内において、どのくらいの工数が使用されているか算出する。算出されたデータを元に業務の改善点をつきとめ効率化をはかり、繁忙期と閑散期の仕事量を平準化する。
今まで製造現場で働き業務効率化にも取り組んだ中で、明確な工数がない為、どの時期にどのくらいの負荷がかかっているか不明確といった課題に直面することが多かったので、このようなサービスで課題解決したいと考えています。
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

## 今後実装してみたい機能
<li>検索機能にインクリメンタルサーチ</li>

## 🌐 App URL
### https://pure-retreat-23359.herokuapp.com/

* テストアカウント
  * メールアドレス：`sample@test.com`
  * パスワード：ssss1111

* 動作確認方法
  * Chromeの最新版を利用してアクセスしてください。
  * ただしデプロイ等で接続できないタイミングもございます。  その際は少し時間をおいてから接続してください。
  * 接続先およびログイン情報については、上記の通りです。
  * 同時に複数の方がログインしている場合に、ログインできない可能性があります。



## ツール
<li>ruby</li>
<li>rails</li>
<li>haml</li>
<li>scss</li>

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


