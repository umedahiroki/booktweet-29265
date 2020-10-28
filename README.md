# BookTweet

## ●アプリケーション概要
本に対するレビューをSNSみたいに
投稿、共有できるアプリケーションです。

◆出来ること
* 本のレビューの投稿
* 他のユーザーのレビューを閲覧
* レビューへのコメント
* キーワードで本を検索

## ●URL
[リモートリポジトリURL](https://booktweet-29265.herokuapp.com)

## ●テスト用アカウント
◆テスト用ログインアカウント
* メールアドレス：hiroki@1017
* パスワード：hiroki1017

◆Basic認証
* ID pass
* pass 7777

## ●利用方法
◆ユーザー登録  
1: トップページ画面右上の「新規登録」ボタンをクリック  
2: フォームを入力  
※「ニックネーム」フォームに入力した名前が  
トップページのヘッダーに表示される      
3: 新規登録完了  
※新規登録しないと投稿が出来ない  
※画面右上に  「登録したニックネーム」と  
「投稿する」ボタンが表示される  

◆ログイン  
1:トップページ画面右上の「ログイン」ボタンをクリック  
2:フォームを入力  
3:ログイン完了  
※画面右上に  「登録したニックネーム」と
「投稿する」ボタンが表示される  

◆他のユーザーのレビューを見る  
1:トップページに投稿されたレビューが一覧で表示  
2:見たい投稿をクリックすると投稿情報の詳細が記載された  
ページへ移動される  

◆本のレビューを投稿  
1:画面右上の「投稿する」ボタンをクリック  
2:フォームに情報を入力する
3:画面一番下の「投稿」ボタンをクリックで投稿完了  

◆自分が投稿したレビューを編集する  
1:編集した投稿をクリックして詳細ページへ移動  
2:画面右の中央に「編集」「削除」ボタンが表示されてる  
3:「編集」ボタンをクリックし内容を編集  
4:画面下の「編集」ボタンをクリック  
  
◆自分が投稿したレビューを削除する  
1:編集した投稿をクリックして詳細ページへ移動  
2:画面右の中央に「編集」「削除」ボタンが表示されてる  
3:「削除」ボタンをクリックし内容を編集  
4:画面下の「削除」ボタンをクリック  

◆キーワードで投稿を検索する  
1:画面のヘッダーより少し下に検索フォームが表示されてる  
※「キーワードで入力」という入力欄がある  
2:検索したいキーワードを入力  
3:キーワードを含んだ投稿が一覧で表示される  

◆レビューへコメントする  
1:コメントしたい投稿をクリックし詳細ページへ移動  
2:画面を下へスクロール  
3:コメント入力フォームが表示される  
4:コメントを入力し「SEND」ボタンをクリックする  
5:「＜コメント一覧＞」以下にコメントが表示される

## ●目指した課題解決  
* 良質な本と出会う確率をあげる  
* アウトプット力の向上  
* スキルアップ  
* 読書記録を可視化することによる読書習慣の定着    

## ●洗い出した要件
* ユーザー管理機能
* 投稿機能
* 投稿詳細画面表示機能
* マイページ表示機能
* 投稿編集機能
* 投稿削除機能
* 投稿検索機能
* コメント機能

## ●実装した機能についてのGIFと説明
◆新規登録    
<img src="https://gyazo.com/b717f616c93a83d11f5f556f7e074729/raw" width="200">

◆ログイン  
<img src="https://gyazo.com/b37e98e93bc10559dfac6973c34bc75a/raw" width="200">  
  
◆投稿機能        
画像①   
<img src="https://gyazo.com/9a3fd9fdbcbdd2650a1bb42f6ca0dc67/raw" width="200">  
  
画像②   
<img src="https://gyazo.com/e9603c93be5f0c126cdbfb9388f26040/raw" width="200">    
  
◆投稿詳細画面表示機能  
<img src="https://gyazo.com/3158807fdb6a2165800210399c2fc13e/raw" width="200">     

◆マイページ表示機能  
画像①  
<img src="https://gyazo.com/319cb84e38c74550825bfbeb05819ae4/raw" width="200">       
  
画像②   
<img src="https://gyazo.com/b949ddaa5e047decd48492f628cce418/raw" width="200">       
  
◆投稿編集機能  
画像①  
<img src="https://gyazo.com/6bead870c057b1e883a7d16297ce9f05/raw" width="200">         
  
画像②  
<img src="https://gyazo.com/478d81e1904cf843bab2632b2931ba0a/raw" width="200">         

◆投稿削除機能  
<img src="https://gyazo.com/fa04c1d71c2aee757ddfc1bc16426226/raw" width="200">   
  
◆投稿検索機能  
<img src="https://gyazo.com/914e916e2a7f5589302a8efee354fc02/raw" width="200">   
    
◆コメント機能  
<img src="https://gyazo.com/aaeaf25ac353ad1bc9926e489723daec/raw" width="200">

## ●実装予定の機能
* コメントを非同期で投稿できる
* タグからの検索機能

## ●データベース設計
[ER図](https://drive.google.com/file/d/1sQc4MIjn67hZGddrCepwsnqeYDKLUDiW/view?usp=sharing)

## ●ローカルでの動作方法

◆リポジトリのクローンを取得  
git clone https://github.com/umedahiroki/booktweet-29265.git  

◆gemのインストール  
bundle install  
  
◆テーブル定義の反映  
rails db:create  
rails db:migrate  
  
◆サーバーを起動
rails s

# テーブル設計

## users テーブル

| Column              | Type   | Options           |
| ------------------- | ------ | ----------------- |
| first_name          | string | null: false       | 
| last_name           | string | null: false       |
| first_name_kana     | string | null: false       | 
| last_name_kana      | string | null: false       |
| nicknmame           | string | null: false       |
| email               | string | null: false       |
| password            | string | null: false       |

### Association

- has_many :books
- has_many :comments


## books テーブル

| Column            | Type      | Options                                    |
| ----------------- | --------- | ------------------------------------------ |
| name              | string    | null: false                                |
| image             | text      | null: false                                |
| text              | text      | null: false                                |
| topic             | string    | null: false                                |
| user              | reference | null: false null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments


## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |                         
| user    | references | null: false, foreign_key: true |
| book    | references | null: false, foreign_key: true |
| text    | text       | null: false                    |

### Association

- belongs_to :user
- belongs_to :book

# 自己紹介<br>
### ■ 名前：<br>
梅田大樹
### ■ 生年月日：<br>
1996年10月17日（満24歳）
### ■ 経歴：<br>
関西学院大学経済学部卒業後、株式会社ネオキャリアに入社。<br>
1年と2ヶ月、人材派遣の法人営業として従事。<br>
その後自らの手でサービスを開発出来るようになりたいと思い退職を決意。<br>
退職後プログラミング学習を始め、現在はプロのエンジニアになるべく学習中。<br>

最近は人間科学に興味があり、人類学や脳科学などの本を良く読んでます。<br>
ちなみに最近読んだ本で一番面白かったのは「サピエンス全史」です。<br>
将来は、人が楽しく働けるようなシステムの開発に携わりたいと考えてます。
 
### ■ スキルセット：<br>
Photoshop：☆☆☆☆☆<br>
Illustrator：☆☆☆☆☆<br>
HTML5/CSS3：★★★☆☆<br>
JavaScript：★★★☆☆<br>
jQuery：★★★☆☆<br>
Ruby:★★★☆☆<br>

### ■ ブログ：
プログラミングの学習に関してアウトプットしています。<br>
https://ume1017.hateblo.jp/
