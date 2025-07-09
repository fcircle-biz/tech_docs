# SQL学習ガイドライン

このガイドラインでは、SQL言語とデータベースの基礎から応用までを段階的に学習するためのカリキュラムを提供しています。各トピックには詳細な解説へのリンクが含まれています。

## 学習コンテンツ

### [1. SQLとデータベースの基本](https://fcircle-biz.github.io/tech_docs/guide/database/sql/sql-learning-material-1.html)
データベースの基本概念、RDBの仕組み、SQLの役割、PostgreSQLの特徴と使いどころについて解説し、実際にPostgreSQLをインストールして使い始める方法を学びます。

### [2. データベースとテーブルを作る](https://fcircle-biz.github.io/tech_docs/guide/database/sql/sql-learning-material-2.html)
データベースとテーブルの作成方法、各種データ型の選択方法、主キーと制約の設定など、データベース設計の基本を学び、実際に顧客テーブルと商品テーブルを作成します。

### [3. データを登録・更新・削除する](https://fcircle-biz.github.io/tech_docs/guide/database/sql/sql-learning-material-3.html)
INSERT、UPDATE、DELETE文によるデータ操作の基本と、WHERE句を使った対象の絞り込み方法を学習し、実際に顧客情報の追加・変更・削除を行います。

### [4. データを検索する](https://fcircle-biz.github.io/tech_docs/guide/database/sql/sql-learning-material-4.html)
SELECT文の基本的な使い方、WHERE句での条件指定、ORDER BYによる並べ替え、LIMIT/OFFSETによる取得件数の制限など、データ検索の基本テクニックを学びます。

### [5. データの並び替えと重複除去](https://fcircle-biz.github.io/tech_docs/guide/database/sql/sql-learning-material-5.html)
ORDER BY句による複数条件での並べ替え、DISTINCTを使った重複除去、CASE文による条件分岐など、より高度なデータ処理方法を学習します。

### [6. 集計とグループ化](https://fcircle-biz.github.io/tech_docs/guide/database/sql/sql-learning-material-6.html)
COUNT、SUM、AVG、MAXなどの集計関数とGROUP BY句を使って、データの集計・分析を行う方法を学びます。また、HAVINGによるグループの絞り込みも解説します。

### [7. 複数テーブルをつなげて使う（JOIN）](https://fcircle-biz.github.io/tech_docs/guide/database/sql/sql-learning-material-7.html)
INNER JOIN、LEFT JOIN、RIGHT JOINなど各種JOIN操作の意味と使い方を理解し、複数のテーブルからデータを取得する方法を学習します。

### [8. サブクエリとビュー](https://fcircle-biz.github.io/tech_docs/guide/database/sql/sql-learning-material-8.html)
サブクエリの概念と使い方を学び、より複雑な条件での検索や多段階の処理を行う方法を理解します。また、ビューの作成と活用方法についても解説します。

### [9. よく使う便利な機能](https://fcircle-biz.github.io/tech_docs/guide/database/sql/sql-learning-material-9.html)
文字列処理関数、日付処理関数、条件式、トランザクション制御など、実務でよく使用する便利な機能について学習します。

### [10. PostgreSQL入門](https://fcircle-biz.github.io/tech_docs/guide/database/sql/sql-learning-material-10.html)
JSON型、配列型、ウィンドウ関数、共通テーブル式（CTE）など、PostgreSQLの高度な機能を学び、より効率的かつ強力なデータベース操作を習得します。

## 学習の進め方

1. 初めてSQLを学ぶ方は、必ず「1. SQLとデータベースの基本」から順番に学習を進めてください。
2. 各トピックの内容を理解したら、実際にコードを書いて試してみましょう。
3. 演習問題や理解度確認テストに取り組み、理解を深めましょう。
4. 学習を進めながら小さなプロジェクト（例：顧客管理システム、在庫管理システム）を作成すると、理解が定着します。

## 関連リソース

- [PostgreSQL SQLチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/fundamentals/postgresql-infographic.html) - PostgreSQLの主要なSQL文とコマンドをまとめた参考資料
- [SQLチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/fundamentals/sql-cheatsheet.html) - SQL文の基本的な構文をまとめた参考資料