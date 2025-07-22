# Struts 1.x 超入門チュートリアル

このチュートリアルでは、Web開発が初めての方でも理解できるよう、Apache Struts 1.x フレームワークの基礎から実際のWebアプリケーション開発まで、丁寧に段階的に学習します。

## 📋 チュートリアル概要

### 🎯 学習目標
- **Webアプリケーションの仕組み**を基礎から理解する
- **Struts 1.x フレームワーク**の概念と使い方をマスターする
- **Windows + Eclipse**での開発環境構築を習得する
- **MVC パターン**によるWebアプリケーション設計を学ぶ
- **データベース連携**の基本的な仕組みを理解する
- **簡単なユーザー管理システム**を一から作成できるようになる

### 👥 対象読者（初心者歓迎！）
- **プログラミング初心者**の方（Javaの基本文法が少しわかれば大丈夫）
- **Web開発未経験**の方
- **HTMLの基礎**がわかる方
- **Struts 1.x を基礎から学びたい**方
- **レガシーシステムの保守**に関わることになった方

### 💡 このチュートリアルの特徴
- **専門用語を丁寧に解説** - 難しい用語も初心者向けに説明
- **Windows環境に特化** - Windowsでの開発手順を詳細に解説
- **Eclipse完全対応** - Eclipse IDEの使い方を画面説明付きで案内
- **エラー対処法も充実** - 初心者がよく遭遇する問題の解決方法を掲載
- **なぜそうするのか？を重視** - 理由と背景も含めて説明

## 🔧 前提条件・環境要件

### 必要なソフトウェア
- **JDK**: 1.8 以上（推奨: JDK 8）
- **IDE**: Eclipse IDE for Enterprise Java Developers または IntelliJ IDEA
- **アプリケーションサーバー**: Apache Tomcat 8.5 または 9.0
- **データベース**: PostgreSQL 12+ または H2 Database
- **ビルドツール**: Maven 3.6+ または Ant 1.10+

### 推奨する基礎知識
- Java SE の基本文法
- JSP と Servlet の基本概念
- HTML、CSS、JavaScript の基礎
- SQL の基本的なCRUD操作
- MVC アーキテクチャパターンの理解

## 📚 チュートリアル構成

### Step 1: [環境構築とプロジェクト作成](https://fcircle-biz.github.io/tech_docs/tutorial/struts1/step1-environment-setup.html)
- 開発環境の準備（JDK、Tomcat、IDE設定）
- Maven プロジェクトの作成
- Struts 1.x ライブラリの依存関係設定
- Hello World アプリケーションの作成

**学習時間**: 約2時間

### Step 2: [Struts設定とMVCの基礎](https://fcircle-biz.github.io/tech_docs/tutorial/struts1/step2-struts-config-mvc.html)
- struts-config.xml の設定方法
- web.xml の設定
- Action クラスの作成と実装
- JSP ビューの作成
- ActionForm の使用方法

**学習時間**: 約3時間

### Step 3: [データベース接続とDAO設計](https://fcircle-biz.github.io/tech_docs/tutorial/struts1/step3-database-dao.html)
- データベース（PostgreSQL/H2）の設定
- JDBC による DB 接続設定
- DAO（Data Access Object）パターンの実装
- 接続プールの設定
- トランザクション管理

**学習時間**: 約2.5時間

### Step 4: [ユーザー管理機能の実装（CREATE, READ）](https://fcircle-biz.github.io/tech_docs/tutorial/struts1/step4-user-create-read.html)
- User エンティティクラスの作成
- ユーザー登録機能の実装
- ユーザー一覧表示機能
- バリデーション機能の追加
- エラーハンドリング

**学習時間**: 約3時間

### Step 5: [ユーザー管理機能の拡張（UPDATE, DELETE）](https://fcircle-biz.github.io/tech_docs/tutorial/struts1/step5-user-update-delete.html)
- ユーザー詳細表示機能
- ユーザー情報更新機能
- ユーザー削除機能
- 確認ダイアログの実装
- CRUD機能の統合

**学習時間**: 約3時間

### Step 6: [UI改善とセキュリティ対策](https://fcircle-biz.github.io/tech_docs/tutorial/struts1/step6-ui-security.html)
- CSS を使用したUI改善
- JavaScript による動的機能
- セッション管理
- CSRF 対策の基本
-入力値のサニタイゼーション

**学習時間**: 約2時間

### Step 7: [テストとデバッグ](https://fcircle-biz.github.io/tech_docs/tutorial/struts1/step7-testing-debug.html)
- JUnit を使用した単体テスト
- Action クラスのテスト方法
- DAO のテスト実装
- ブラウザでの動作確認
- デバッグ技法

**学習時間**: 約2時間

### Step 8: [デプロイメントと運用](https://fcircle-biz.github.io/tech_docs/tutorial/struts1/step8-deployment.html)
- WAR ファイルの作成
- Tomcat へのデプロイ
- ログ設定
- パフォーマンス考慮事項
- 本番環境への対応

**学習時間**: 約1.5時間

## 🎯 作成するアプリケーション概要

### アプリケーション名: Simple User Management System

#### 主な機能
1. **ユーザー登録** - 新規ユーザーの情報を登録
2. **ユーザー一覧** - 登録されたユーザーの一覧表示
3. **ユーザー詳細** - 特定ユーザーの詳細情報表示
4. **ユーザー編集** - 既存ユーザー情報の更新
5. **ユーザー削除** - ユーザー情報の削除

#### データベース設計
```sql
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

#### 技術スタック
- **フレームワーク**: Apache Struts 1.3.x
- **ビュー**: JSP + JSTL + Struts タグライブラリ
- **データベース**: PostgreSQL 12+ (開発用: H2 Database)
- **ビルドツール**: Maven
- **サーバー**: Apache Tomcat 9.0

## ⏱️ 総学習時間
**約19時間**（実際の進行状況により変動）

## 📖 参考資料とリンク

### 公式ドキュメント
- [Apache Struts 1.x ユーザーガイド](https://struts.apache.org/1.3.10/userGuide/index.html)
- [Struts 1.x API ドキュメント](https://struts.apache.org/1.3.10/api/index.html)

### 関連技術
- [JSP & Servlet チュートリアル](https://fcircle-biz.github.io/tech_docs/tutorial/jsp-servlet/README.html)
- [Maven ビルドツール入門](https://fcircle-biz.github.io/tech_docs/tutorial/maven/README.html)
- [PostgreSQL データベース基礎](https://fcircle-biz.github.io/tech_docs/tutorial/postgresql/README.html)

### 学習ガイドライン
- [Struts 1.x 学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/java-ecosystem/struts1/README.html)
- [JDBC 学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/java-ecosystem/jdbc/README.html)
- [JSP 学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/java-ecosystem/jsp/README.html)

## 🚀 チュートリアルの進め方

1. **事前準備**: 必要なソフトウェアをインストール
2. **順次実践**: Step 1 から Step 8 まで順番に進める
3. **コード実装**: サンプルコードを参考に実際に手を動かす
4. **動作確認**: 各ステップで必ず動作確認を行う
5. **理解確認**: 各章末の演習問題に取り組む

## ⚠️ 注意事項

- Struts 1.x は既にメンテナンスが終了しているフレームワークです
- 新規開発では Spring MVC や Spring Boot の使用を推奨します
- このチュートリアルは主にレガシーシステムの理解・保守目的です
- セキュリティの観点から本番環境での使用は十分検討してください

## 💬 サポート

質問や問題が発生した場合は、各ステップのコメント欄または[Issues](https://github.com/fcircle-biz/tech_docs/issues)でお気軽にお問い合わせください。

---

**Ready to start?** 👉 [Step 1: 環境構築とプロジェクト作成](https://fcircle-biz.github.io/tech_docs/tutorial/struts1/step1-environment-setup.html) から始めましょう！