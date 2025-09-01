# SQL基礎 スライド教材

この教材では、SQL（Structured Query Language）の基本概念からデータベース操作の実践まで、視覚的なスライド形式で効率的に学習できます。

## 教材形式
- **ファイル形式**: PDF（HTMLから高品質変換）
- **推奨スライド数**: 14枚（基本概念から実践応用まで）
- **学習時間**: 45-60分（詳細学習時）、20-30分（概要把握時）

## 前提条件
### 必要な環境
- PDFビューアー（Adobe Acrobat Reader推奨）
- データベース環境（PostgreSQL、MySQL、SQLite等）
- SQLクライアントツール（pgAdmin、MySQL Workbench、DBeaver等）

### 参考リソース
- [PostgreSQL公式ドキュメント](https://www.postgresql.org/docs/)
- [MySQL公式ドキュメント](https://dev.mysql.com/doc/)
- [SQLiteドキュメント](https://www.sqlite.org/docs.html)
- [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)

### 前提知識
- **必須**: コンピュータの基本操作、テキストエディタの使用経験
- **推奨**: データ管理の基礎概念、表計算ソフトの使用経験

## スライド構成
### 1. タイトルスライド
- データベースアイコン・SQL文字表示
- 学習目標の概要（データ操作の基本習得）
- 対象レベルの明示（初級～中級）

### 2. 目次スライド (2枚目)
- 全体の学習フロー
- 各セクションの学習時間目安
- SQL基礎から実践応用への道筋

### 3. SQL基礎概念とデータベース入門 (3枚目)
- SQLとは何か、その役割と重要性
- リレーショナルデータベースの概念
- RDBMS（関係データベース管理システム）の種類
- データベースの活用場面と実例

### 4. データベース設計の基本 (4枚目)
- テーブル、レコード、フィールドの概念
- 主キー（Primary Key）と外部キー（Foreign Key）
- 正規化の基本概念（第1～第3正規形）
- ER図（Entity Relationship Diagram）の読み方

### 5. テーブル作成とデータ型 (5枚目)
- CREATE TABLE文の基本構文
- 主要なデータ型（INTEGER、VARCHAR、DATE等）
- 制約（NOT NULL、UNIQUE、CHECK等）
- インデックスの基本概念

### 6. SELECT文の基本操作 (6枚目)
- SELECT文の基本構文
- FROM句によるテーブル指定
- カラムの選択と別名（AS）
- DISTINCT による重複排除

### 7. WHERE句とフィルタリング (7枚目)
- WHERE句の基本構文
- 比較演算子（=、<>、<、>、<=、>=）
- 論理演算子（AND、OR、NOT）
- LIKE演算子とワイルドカード（%、_）
- IN、BETWEEN、IS NULLの使用

### 8. ソートとグループ化 (8枚目)
- ORDER BY句によるソート（ASC、DESC）
- GROUP BY句によるグループ化
- 集約関数（COUNT、SUM、AVG、MAX、MIN）
- HAVING句によるグループ化後のフィルタリング

### 9. 結合（JOIN）操作 (9枚目)
- INNER JOINによる内部結合
- LEFT/RIGHT JOINによる外部結合
- FULL OUTER JOINと CROSS JOIN
- 自己結合の概念と使用例

### 10. サブクエリとビュー (10枚目)
- サブクエリの基本概念
- WHERE句、FROM句でのサブクエリ
- 相関サブクエリ
- ビューの作成と活用（CREATE VIEW）

### 11. データ操作（INSERT、UPDATE、DELETE） (11枚目)
- INSERT文によるデータ挿入
- UPDATE文によるデータ更新
- DELETE文によるデータ削除
- トランザクション制御（BEGIN、COMMIT、ROLLBACK）

### 12. インデックスとパフォーマンス最適化 (12枚目)
- インデックスの仕組みと効果
- EXPLAIN/EXPLAIN ANALYZEの活用
- クエリ最適化の基本原則
- パフォーマンスチューニングのポイント

### 13. よくある質問（FAQ）
- NULLの扱い方と注意点
- 文字化けの対処法（文字コード設定）
- 大文字小文字の区別について
- 日付データの扱い方

### 14. 参考リンク・資料
- 各種RDBMSの公式ドキュメント
- SQLクライアントツールの紹介
- オンライン学習リソース
- 次のステップ（ストアドプロシージャ、トリガー等）

## ダウンロード
- **PDFファイル**: [sql-fundamentals-slides.pdf](pdf/sql-fundamentals-slides.pdf)
- **HTMLソースファイル**: [GitHubリポジトリ](https://github.com/fcircle-biz/tech_docs/tree/main/docs/slide/database/sql-fundamentals)

## 視覚的特徴
- **大きなフォントサイズ**: 16px-48pxで優れた視認性
- **アイコン活用**: Font Awesomeデータベースアイコン（`fa-database`）で理解促進
- **2列レイアウト**: 効率的な情報配置
- **色分けシステム**: Tailwind CSS + データベースブルー（#336791）ベース

## 学習目標
このスライド教材を完了すると、以下のスキルを身につけることができます：
- リレーショナルデータベースの基本概念を理解できる
- 基本的なSQL文（SELECT、INSERT、UPDATE、DELETE）を記述できる
- WHERE句を使用した効果的なデータフィルタリングができる
- JOINを使用した複数テーブルの結合ができる
- GROUP BYと集約関数を使用したデータ分析ができる

## 関連教材
- **詳細ガイド**: [SQL完全ガイド（guide形式）](https://fcircle-biz.github.io/tech_docs/guide/database/sql/)
- **実習チュートリアル**: [PostgreSQLチュートリアル](https://fcircle-biz.github.io/tech_docs/tutorial/database/postgresql/)
- **クイックリファレンス**: [SQLチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/database/sql-cheatsheet.html)

## 次のステップ
このスライド完了後は、以下の学習に進むことをお勧めします：
- [PostgreSQL実践スライド](https://fcircle-biz.github.io/tech_docs/slide/database/postgresql-advanced/)
- [NoSQL入門スライド](https://fcircle-biz.github.io/tech_docs/slide/database/nosql-basics/)
- [データベース設計パターン](https://fcircle-biz.github.io/tech_docs/guide/database/design-patterns/)
- [パフォーマンスチューニング実践](https://fcircle-biz.github.io/tech_docs/tutorial/database/performance-tuning/)

## 補足情報

### 教材の特徴
- **実践重視**: 実際のデータベース操作を通じた学習
- **段階的学習**: 基本から応用まで論理的な順序で構成
- **視覚的理解**: 図解とアイコンによる概念の可視化
- **エラー対策**: よくあるミスとその対処法を解説

### 想定学習者
- プログラミング初心者でデータベースを学びたい方
- Webアプリケーション開発でSQLを使用する必要がある方
- データ分析の基礎としてSQLを習得したい方
- システム開発の基礎知識としてSQLを学びたい方

### 学習のコツ
- 実際のデータベース環境で手を動かして練習する
- 小さなデータセットから始めて徐々に複雑なクエリに挑戦
- エラーメッセージを読み解く習慣をつける
- 実行計画（EXPLAIN）を確認してクエリの動作を理解する

### 実践的なSQL例

#### 基本的なSELECT文
```sql
-- 全カラムの取得
SELECT * FROM users;

-- 特定カラムの取得
SELECT name, email, created_at 
FROM users;

-- 条件付き検索
SELECT name, email 
FROM users 
WHERE status = 'active';
```

#### WHERE句の活用例
```sql
-- 複数条件の組み合わせ
SELECT * FROM products 
WHERE price >= 1000 
  AND category = '家電' 
  AND stock > 0;

-- LIKE演算子による部分一致検索
SELECT * FROM customers 
WHERE name LIKE '田中%';

-- IN演算子による複数値の検索
SELECT * FROM orders 
WHERE status IN ('pending', 'processing', 'shipped');
```

#### JOINの使用例
```sql
-- INNER JOINによる結合
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    c.email
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

-- LEFT JOINによる外部結合
SELECT 
    p.product_name,
    p.price,
    c.category_name
FROM products p
LEFT JOIN categories c ON p.category_id = c.category_id;
```

#### グループ化と集約関数
```sql
-- カテゴリ別の商品数と平均価格
SELECT 
    category,
    COUNT(*) as product_count,
    AVG(price) as avg_price,
    MAX(price) as max_price
FROM products
GROUP BY category
HAVING COUNT(*) > 5
ORDER BY avg_price DESC;

-- 月別売上集計
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') as month,
    COUNT(*) as order_count,
    SUM(total_amount) as total_sales
FROM orders
WHERE order_date >= '2024-01-01'
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;
```

#### データ操作の例
```sql
-- データの挿入
INSERT INTO users (name, email, created_at) 
VALUES ('山田太郎', 'yamada@example.com', NOW());

-- データの更新
UPDATE products 
SET price = price * 1.1,
    updated_at = NOW()
WHERE category = '書籍';

-- データの削除
DELETE FROM logs 
WHERE created_at < DATE_SUB(NOW(), INTERVAL 30 DAY);

-- トランザクション処理
BEGIN TRANSACTION;

UPDATE accounts 
SET balance = balance - 1000 
WHERE account_id = 1;

UPDATE accounts 
SET balance = balance + 1000 
WHERE account_id = 2;

COMMIT;
```

### 重要なポイント

#### データ型の選択
- **数値型**: INTEGER、DECIMAL、FLOATの使い分け
- **文字列型**: VARCHAR、TEXT、CHARの選択基準
- **日付時刻型**: DATE、TIME、TIMESTAMP、DATETIMEの用途

#### パフォーマンスの考慮
- インデックスを適切に設定する
- SELECT * ではなく必要なカラムのみを取得
- JOINの順序とインデックスの関係を理解
- サブクエリよりJOINを優先的に使用

#### セキュリティ対策
- SQLインジェクション対策（プリペアドステートメント使用）
- 適切な権限設定（最小権限の原則）
- 機密データの暗号化
- 監査ログの実装

**注意**: 実際のHTMLファイルとPDFの作成は、slide-creator-step2エージェントで行います。このREADME.mdは、教材の設計書として機能します。