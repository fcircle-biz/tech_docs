# 注文管理システム 製造課題

この課題は、[Next.js フルスタック学習パス](https://fcircle-biz.github.io/tech_docs/docs/learning-paths/nextjs-fullstack-learning-path.md)を学習し、[Todoアプリチュートリアル](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs-fastapi-todo/nextjs-fastapi-todo-tutorial-01.html)を完了した方向けの実践課題です。

仕様書とモック画面を参考に、自力でシステムを構築してください。

## 概要

飲食店や小売店向けのシンプルな注文管理システムです。顧客情報、商品情報、注文情報を管理し、CRUD操作に加えてリレーション（テーブル間の関連付け）や集計機能を実装します。

Todoアプリが「1テーブル・単純なCRUD」だったのに対し、本課題では「4テーブル・リレーション・ステータス管理・集計」といった、より実践的なシステム開発を体験できます。

## 学習目標

この課題を完了すると、以下のスキルを確認・強化できます：

- 複数テーブルを持つデータベース設計
- 外部キー制約とリレーションの理解
- JOINを使った複合クエリの作成
- ステータス管理を含むビジネスロジックの実装
- 動的なフォーム（明細行の追加・削除）の実装
- 集計機能とダッシュボード画面の作成
- より複雑なAPIエンドポイントの設計

## 前提条件

### 必要な知識・スキル

- [Todoアプリチュートリアル](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs-fastapi-todo/nextjs-fastapi-todo-tutorial-01.html)を完了していること
- Next.js（App Router）の基本操作
- FastAPIでのCRUD API実装
- SQLModelを使ったORMの基本
- PostgreSQLの基本操作

### 必要な環境

- Node.js 18以上
- Python 3.10以上
- Docker Desktop（PostgreSQL用）
- Git

## 設計資料

この課題では以下の設計資料を参照して実装します：

| 資料 | 内容 | リンク |
|------|------|--------|
| システム仕様書 | 機能一覧、API設計、バリデーション | [README.md](../../../specs/nextjs-order-management/docs/README.md) |
| データベース設計 | ER図、テーブル定義、SQL | [database.md](../../../specs/nextjs-order-management/docs/database.md) |
| 実装ガイド | 実装の進め方のヒント | [implementation-guide.md](../../../specs/nextjs-order-management/docs/implementation-guide.md) |
| モック画面 | 完成イメージのHTML | [mockups/](./mockups/index.html) |

### モック画面一覧

| 画面 | 説明 | ファイル |
|------|------|----------|
| ダッシュボード | 本日の売上サマリー、最近の注文一覧 | [dashboard.html](./mockups/dashboard.html) |
| 顧客一覧 | 顧客の一覧表示、検索 | [customers.html](./mockups/customers.html) |
| 顧客登録 | 顧客情報の入力フォーム | [customers-new.html](./mockups/customers-new.html) |
| 顧客編集 | 顧客情報の編集フォーム | [customers-edit.html](./mockups/customers-edit.html) |
| 商品一覧 | 商品の一覧表示、カテゴリ絞り込み | [products.html](./mockups/products.html) |
| 商品登録 | 商品情報の入力フォーム | [products-new.html](./mockups/products-new.html) |
| 商品編集 | 商品情報の編集フォーム | [products-edit.html](./mockups/products-edit.html) |
| 注文一覧 | 注文の一覧表示、ステータス絞り込み | [orders.html](./mockups/orders.html) |
| 注文作成 | 顧客選択、商品選択、数量入力 | [orders-new.html](./mockups/orders-new.html) |
| 注文詳細 | 注文内容の詳細表示、ステータス更新 | [orders-detail.html](./mockups/orders-detail.html) |

## 学習コンテンツ

### [Step 1: 環境構築](https://fcircle-biz.github.io/tech_docs/assignment/nextjs-order-management/nextjs-order-management-assignment-01.html)

プロジェクトのセットアップとDocker環境の構築を行います。

- 実装内容: プロジェクトフォルダ作成、Docker Compose設定、バックエンド/フロントエンド環境構築
- 参照: 実装ガイド Step 1
- 完了条件:
  - [ ] PostgreSQLがDockerで起動する
  - [ ] FastAPIが http://localhost:8000/docs で動作する
  - [ ] Next.jsが http://localhost:3000 で動作する

### [Step 2: 顧客管理機能](https://fcircle-biz.github.io/tech_docs/assignment/nextjs-order-management/nextjs-order-management-assignment-02.html)

顧客情報のCRUD機能を実装します。Todoアプリで学んだ内容の復習として最適です。

- 実装内容: 顧客モデル、顧客API（CRUD）、顧客一覧/登録/編集画面
- 参照: 仕様書「顧客管理機能」「顧客API」、DB設計「customersテーブル」
- 完了条件:
  - [ ] 顧客を登録できる
  - [ ] 顧客一覧が表示される
  - [ ] 顧客を編集・削除できる
  - [ ] 名前で検索できる

### [Step 3: 商品管理機能](https://fcircle-biz.github.io/tech_docs/assignment/nextjs-order-management/nextjs-order-management-assignment-03.html)

商品情報のCRUD機能を実装します。顧客管理と同様のパターンで、カテゴリフィルタを追加します。

- 実装内容: 商品モデル、商品API（CRUD）、商品一覧/登録/編集画面
- 参照: 仕様書「商品管理機能」「商品API」、DB設計「productsテーブル」
- 完了条件:
  - [ ] 商品を登録できる
  - [ ] カテゴリでフィルタできる
  - [ ] 販売中/販売停止を切り替えられる

### [Step 4: 注文管理機能](https://fcircle-biz.github.io/tech_docs/assignment/nextjs-order-management/nextjs-order-management-assignment-04.html)

注文の作成・管理機能を実装します。複数テーブルのリレーションとステータス管理がポイントです。

- 実装内容: 注文/注文明細モデル、注文API、注文一覧/作成/詳細画面
- 参照: 仕様書「注文管理機能」「注文API」「注文ステータス」、DB設計「orders/order_itemsテーブル」
- 完了条件:
  - [ ] 顧客を選択して注文を作成できる
  - [ ] 商品を追加・削除、数量を変更できる
  - [ ] 合計金額が正しく計算される
  - [ ] ステータスを更新できる

### [Step 5: ダッシュボード機能](https://fcircle-biz.github.io/tech_docs/assignment/nextjs-order-management/nextjs-order-management-assignment-05.html)

本日の売上サマリーと最近の注文を表示するトップページを実装します。

- 実装内容: ダッシュボードAPI（集計）、ダッシュボード画面
- 参照: 仕様書「ダッシュボード機能」「ダッシュボードAPI」、DB設計「集計クエリ」
- 完了条件:
  - [ ] 本日の注文件数・売上が表示される
  - [ ] ステータス別件数が表示される
  - [ ] 最近の注文一覧が表示される

### [Step 6: 仕上げ](https://fcircle-biz.github.io/tech_docs/assignment/nextjs-order-management/nextjs-order-management-assignment-06.html)

削除制約、エラーハンドリング、UI改善など、システム全体の仕上げを行います。

- 実装内容: 削除制約の追加、エラーハンドリング、動作確認
- 参照: 仕様書「エラーメッセージ例」、DB設計「削除時の制約」
- 完了条件:
  - [ ] 注文がある顧客・商品は削除できない
  - [ ] エラー時に適切なメッセージが表示される
  - [ ] 全機能が正常に動作する

## 推奨所要時間

| ステップ | 内容 | 目安時間 |
|----------|------|----------|
| Step 1 | 環境構築 | 1時間 |
| Step 2 | 顧客管理機能 | 4〜5時間 |
| Step 3 | 商品管理機能 | 3〜4時間 |
| Step 4 | 注文管理機能 | 6〜8時間 |
| Step 5 | ダッシュボード機能 | 3〜4時間 |
| Step 6 | 仕上げ | 2〜3時間 |
| **合計** | | **約20〜25時間** |

## 進め方

1. **設計書を読む**: まず仕様書とDB設計を熟読し、全体像を把握
2. **モック画面を確認**: 完成イメージを見て、必要な画面とデータを理解
3. **ステップ順に実装**: 各ステップのガイドに沿って実装
4. **動作確認**: 各ステップの完了条件を満たしているか確認
5. **困ったら設計書を再確認**: コードではなく設計書を参照

### 実装のコツ

- **機能ごとにバックエンド→フロントエンドの順で実装**すると、動作確認しながら進められます
- **Swagger UI（/docs）を活用**して、APIの動作を先に確認しましょう
- **Todoアプリのコードを参考に**、似たパターンを見つけて応用しましょう

## 困ったときは

### 設計書を確認

- **仕様書**: API設計、バリデーションルールを確認
- **DB設計**: テーブル構造、SQL例を確認
- **実装ガイド**: 各ステップの詳細なヒントを確認

### 基礎を振り返る

- [Todoアプリチュートリアル](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs-fastapi-todo/nextjs-fastapi-todo-tutorial-01.html) - 基本的なCRUD実装を復習
- [FastAPI学習ガイド](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/python-ecosystem/fastapi/) - バックエンドの詳細
- [SQL入門学習ガイド](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/database/sql/) - JOINや集計クエリ
- [React学習ガイド](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/javascript-ecosystem/react/) - フロントエンドの詳細

## 技術スタック

| レイヤー | 技術 |
|----------|------|
| フロントエンド | Next.js (App Router) + TypeScript |
| スタイリング | Tailwind CSS |
| バックエンド | Python + FastAPI |
| ORM | SQLModel |
| データベース | PostgreSQL |
| 環境構築 | Docker Compose |

## 関連リソース

- [Next.js フルスタック学習パス](https://fcircle-biz.github.io/tech_docs/docs/learning-paths/nextjs-fullstack-learning-path.md) - この課題の位置づけ
- [Todoアプリチュートリアル](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs-fastapi-todo/nextjs-fastapi-todo-tutorial-01.html) - 前提知識の復習
