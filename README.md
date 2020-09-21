# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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

### Association

- belongs_to :user
- belongs_to :book
