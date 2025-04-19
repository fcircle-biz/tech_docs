# SQL学習ガイドライン

このガイドラインでは、SQL言語とデータベースの基礎から応用までを段階的に学習するためのカリキュラムを提供しています。各トピックには詳細な解説へのリンクが含まれています。

## 学習コンテンツ

### [1. SQLとデータベースの基本](https://fcircle-biz.github.io/tech_docs/guide/sql/sql-learning-material-1.html)
データベースの基本概念、RDBの仕組み、SQLの役割、PostgreSQLの特徴と使いどころについて解説し、実際にPostgreSQLをインストールして使い始める方法を学びます。

### [2. データベースとテーブルを作る](https://fcircle-biz.github.io/tech_docs/guide/sql/sql-learning-material-2.html)
データベースとテーブルの作成方法、各種データ型の選択方法、主キーと制約の設定など、データベース設計の基本を学び、実際に顧客テーブルと商品テーブルを作成します。

### [3. データを登録・更新・削除する](https://fcircle-biz.github.io/tech_docs/guide/sql/sql-learning-material-3.html)
INSERT、UPDATE、DELETE文によるデータ操作の基本と、WHERE句を使った対象の絞り込み方法を学習し、実際に顧客情報の追加・変更・削除を行います。

### [4. データを取得する](https://fcircle-biz.github.io/tech_docs/guide/sql/sql-learning-material-4.html)
SELECT文の基本的な使い方、WHERE句での条件指定、ORDER BYによる並べ替え、LIMIT/OFFSETによる取得件数の制限など、データ取得の基本テクニックを学びます。

### [5. 複数テーブルの結合](https://fcircle-biz.github.io/tech_docs/guide/sql/sql-learning-material-5.html)
INNER JOIN、LEFT JOIN、RIGHT JOINなど各種JOIN操作の意味と使い方を理解し、複数のテーブルからデータを取得する方法を学習します。

### [6. 集計関数とグループ化](https://fcircle-biz.github.io/tech_docs/guide/sql/sql-learning-material-6.html)
COUNT、SUM、AVG、MAXなどの集計関数とGROUP BY句を使って、データの集計・分析を行う方法を学びます。また、HAVINGによるグループの絞り込みも解説します。

### [7. サブクエリと高度な検索](https://fcircle-biz.github.io/tech_docs/guide/sql/sql-learning-material-7.html)
サブクエリの概念と使い方を学び、より複雑な条件での検索や多段階の処理を行う方法を理解します。相関サブクエリやEXISTS句なども解説します。

### [8. ビューとインデックス](https://fcircle-biz.github.io/tech_docs/guide/sql/sql-learning-material-8.html)
ビューの作成・使用方法とインデックスの概念・作成方法を学び、効率的にデータを管理・アクセスする手法を習得します。

### [9. トランザクションと同時実行制御](https://fcircle-biz.github.io/tech_docs/guide/sql/sql-learning-material-9.html)
トランザクションの基本概念、ACID特性、BEGIN/COMMIT/ROLLBACKの使い方、同時実行制御の仕組みについて学習します。

### [10. PostgreSQLの高度な機能](https://fcircle-biz.github.io/tech_docs/guide/sql/sql-learning-material-10.html)
JSON型、配列型、ウィンドウ関数、共通テーブル式（CTE）など、PostgreSQLの高度な機能を学び、より効率的かつ強力なデータベース操作を習得します。

## 学習の進め方

1. 初めてSQLを学ぶ方は、必ず「1. SQLとデータベースの基本」から順番に学習を進めてください。
2. 各トピックの内容を理解したら、実際にコードを書いて試してみましょう。
3. 演習問題や理解度確認テストに取り組み、理解を深めましょう。
4. 学習を進めながら小さなプロジェクト（例：顧客管理システム、在庫管理システム）を作成すると、理解が定着します。

## 関連リソース

- [PostgreSQL SQLチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet1/postgresql-cheatsheet.html) - PostgreSQLの主要なSQL文とコマンドをまとめた参考資料
- [データベース設計チートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet1/database-design-cheatsheet.html) - 効率的なデータベース設計のためのガイドライン