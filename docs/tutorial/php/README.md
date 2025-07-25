# PHP 実践チュートリアル

PHP言語を使用したWebアプリケーション開発の実践的なチュートリアルです。フレームワークを使わない生のPHPによる開発手法を学び、Web開発の基礎を固めることを目的としています。

## チュートリアル概要

### 学習目標
- PHPによるWebアプリケーション開発の基本手法
- HTMLフォームとPHPの連携によるデータ処理
- MySQLを使用したデータベース連携とCRUD操作
- セッション管理によるユーザー状態の保持
- セキュリティを意識した開発手法（SQLインジェクション対策等）
- ブラウザでの動作確認とデバッgging手法

### 対象読者
- プログラミング初心者・超初心者
- HTMLとCSSの基本を理解している方
- Webアプリケーション開発を学びたい方
- PHPの基本文法を学習中または学習済みの方
- データベース連携Webアプリを作りたい方

### 特徴
- フレームワークを使わない生PHP中心の構成
- 実際の開発現場で使用される基本パターンの習得
- セキュリティを意識したコーディング手法
- 段階的に機能を追加する実践的なアプローチ

## 前提条件・環境要件

### 必要なソフトウェア
- **Webサーバー**: Apache HTTP Server 2.4+ または Nginx
- **PHP**: PHP 8.0+ （推奨: PHP 8.1以上）
- **データベース**: MySQL 8.0+ または MariaDB 10.6+
- **開発環境**: XAMPP、MAMP、Docker、またはローカル開発サーバー
- **エディタ**: Visual Studio Code、PhpStorm、または任意のテキストエディタ

### 推奨する基礎知識
- HTML5 の基本タグと構造
- CSS の基本的なスタイリング
- PHP の基本文法（変数、配列、条件分岐、ループ）
- HTTP の基本概念（GET、POST リクエスト）
- SQL の基本的なCRUD操作

## チュートリアル構成

### Step 1: [環境構築とPHP基礎](https://fcircle-biz.github.io/tech_docs/tutorial/php/step1-environment-setup.html)
- 開発環境の構築（XAMPP/MAMP設定）
- PHPの基本動作確認
- HTMLフォームとPHPの連携基礎
- ファイル構成とディレクトリ設計

**所要時間**: 1時間

### Step 2: [データベース設計と接続](https://fcircle-biz.github.io/tech_docs/tutorial/php/step2-database-connection.html)
- MySQLデータベースの作成と設定
- PHPからのデータベース接続（PDO使用）
- テーブル設計とCREATE文の実行
- 接続エラーハンドリング

**所要時間**: 1.5時間

### Step 3: [ユーザー登録機能の実装](https://fcircle-biz.github.io/tech_docs/tutorial/php/step3-user-registration.html)
- ユーザー登録フォームの作成
- フォームデータの受信と検証
- データベースへのINSERT処理
- 入力値検証とエラーメッセージ表示

**所要時間**: 2時間

### Step 4: [ユーザー一覧・詳細表示機能](https://fcircle-biz.github.io/tech_docs/tutorial/php/step4-user-list-detail.html)
- データベースからのデータ取得（SELECT）
- 一覧画面の作成とデータ表示
- 詳細画面の実装
- ページ間のナビゲーション

**所要時間**: 2時間

### Step 5: [ユーザー情報更新・削除機能](https://fcircle-biz.github.io/tech_docs/tutorial/php/step5-user-update-delete.html)
- 編集フォームの実装
- UPDATE処理の実装
- DELETE処理の実装
- 確認ダイアログとユーザビリティ向上

**所要時間**: 2.5時間

### Step 6: [セッション管理とセキュリティ対策](https://fcircle-bz.github.io/tech_docs/tutorial/php/step6-session-security.html)
- セッション機能の実装
- CSRFトークンによる攻撃対策
- SQLインジェクション対策の強化
- XSS対策とデータサニタイズ

**所要時間**: 2時間

### Step 7: [動作確認とデバッグ手法](https://fcircle-biz.github.io/tech_docs/tutorial/php/step7-testing-debug.html)
- ブラウザでの動作確認手順
- 各機能のテスト手法
- PHPエラーログの確認方法
- デバッグ技術とトラブルシューティング

**所要時間**: 1時間

## 作成するアプリケーション概要

### アプリケーション名: Simple User Management System (PHP版)

#### 主な機能
1. **ユーザー登録** - 新規ユーザーの情報を登録
2. **ユーザー一覧** - 登録されたユーザーの一覧表示
3. **ユーザー詳細** - 特定ユーザーの詳細情報表示
4. **ユーザー編集** - 既存ユーザー情報の更新
5. **ユーザー削除** - ユーザー情報の削除
6. **セッション管理** - ユーザー状態の管理

#### データベース設計
```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

#### 技術スタック
- **言語**: PHP 8.1+
- **データベース**: MySQL 8.0+ 
- **フロントエンド**: HTML5 + CSS3 + 少量のJavaScript
- **Webサーバー**: Apache HTTP Server（XAMPP/MAMP環境）
- **データベース接続**: PDO（PHP Data Objects）
- **セキュリティ**: 生PHPによる実装（CSRFトークン、SQLインジェクション対策）

#### ディレクトリ構成
```
user-management/
├── index.php              # トップページ
├── config/
│   └── database.php       # データベース設定
├── includes/
│   ├── header.php         # 共通ヘッダー
│   └── footer.php         # 共通フッター
├── users/
│   ├── list.php           # ユーザー一覧
│   ├── detail.php         # ユーザー詳細
│   ├── create.php         # ユーザー登録
│   ├── edit.php           # ユーザー編集
│   └── delete.php         # ユーザー削除
├── assets/
│   ├── css/
│   │   └── style.css      # スタイルシート
│   └── js/
│       └── script.js      # JavaScript
└── sql/
    └── create_tables.sql  # テーブル作成SQL
```

## 総所要時間
**約12時間**（個人の習熟度により変動）

## 参考資料とリンク

### 公式ドキュメント
- [PHP公式マニュアル](https://www.php.net/manual/ja/)
- [MySQL公式リファレンス](https://dev.mysql.com/doc/refman/8.0/ja/)

### 関連技術
- [HTML5 & CSS3 基礎チュートリアル](https://fcircle-biz.github.io/tech_docs/tutorial/html-css/README.html)
- [MySQL データベース基礎](https://fcircle-biz.github.io/tech_docs/tutorial/mysql/README.html)
- [XAMPP 環境構築ガイド](https://fcircle-biz.github.io/tech_docs/tutorial/xampp/README.html)

### 学習ガイドライン
- [PHP 学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/web-development/php/README.html)
- [Web開発基礎 学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/web-development/basics/README.html)
- [データベース設計 学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/database/mysql/README.html)

## チュートリアルの進め方

1. **環境準備**: 開発環境の構築と動作確認
2. **段階実装**: 各ステップを順次実装し動作確認
3. **コードレビュー**: 実装したコードの品質と安全性確認
4. **動作確認**: ブラウザでの機能テストの実施
5. **成果確認**: 各章の課題と振り返り

## セキュリティに関する注意事項

- **SQLインジェクション対策**: PDOのプリペアドステートメントを必ず使用
- **XSS対策**: ユーザー入力データの適切なエスケープ処理
- **CSRF対策**: フォームにCSRFトークンを実装
- **入力値検証**: サーバーサイドでの厳密な入力値チェック
- **パスワード管理**: password_hash()とpassword_verify()の使用（認証機能追加時）

## 学習のポイント

### 初心者向けアドバイス
- 各ステップで必ず動作確認を行う
- エラーメッセージをよく読み、原因を理解する
- コピー&ペーストに頼らず、コードを理解しながら入力する
- 小さな変更でも頻繁にテストする習慣をつける

### 発展的な学習
- このチュートリアル完了後は以下の学習を推奨：
  - フレームワーク（Laravel、Symfony）の学習
  - オブジェクト指向プログラミングの深化
  - API開発（RESTful API）
  - フロントエンドフレームワーク（Vue.js、React）との連携

## サポート

技術的な質問や不具合報告は[Issues](https://github.com/fcircle-biz/tech_docs/issues)にて受け付けています。

---

[Step 1: 環境構築とPHP基礎](https://fcircle-biz.github.io/tech_docs/tutorial/php/step1-environment-setup.html)