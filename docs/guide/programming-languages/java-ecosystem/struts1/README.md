# Apache Struts 1.x 学習ガイドライン

このガイドラインでは、Apache Struts 1.xフレームワークの基礎から実践的なWebアプリケーション開発まで、段階的に学習するためのカリキュラムを提供しています。各トピックには詳細な解説へのリンクが含まれています。

## 学習コンテンツ

### [1. Struts 1.xの基本概念とMVCアーキテクチャ](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/struts1/struts1-learning-material-1.html)
Struts 1.xフレームワークの概要と特徴、MVCアーキテクチャの理解、Web開発における位置づけについて学び、開発環境のセットアップを行います。

### [2. 環境構築とプロジェクト作成](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/struts1/struts1-learning-material-2.html)
Eclipse/IntelliJ IDEAでのStruts 1.x開発環境構築、Tomcatサーバーの設定、Maven/Antを使ったプロジェクト作成と必要なライブラリの導入を学習します。

### [3. ActionクラスとActionForm](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/struts1/struts1-learning-material-3.html)
Strutsの中核となるActionクラスの作成方法、ActionFormによるフォームデータの管理、リクエスト処理の基本的な流れを理解し実装します。

### [4. struts-config.xmlの設定と管理](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/struts1/struts1-learning-material-4.html)
Strutsアプリケーションの設定ファイルであるstruts-config.xmlの構造、Action、ActionForm、Forward、Exception の設定方法を学習します。

### [5. JSPとの連携とTagライブラリ](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/struts1/struts1-learning-material-5.html)
JSPページでのStrutsタグライブラリの使用方法、html:form、bean:write、logic:iterate等の基本タグの活用と動的なページ作成を学びます。

### [6. バリデーション機能とエラーハンドリング](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/struts1/struts1-learning-material-6.html)
Validator フレームワークを使った入力検証、validation.xmlの設定、カスタムバリデーションの実装、エラーメッセージの表示方法を習得します。

### [7. セッション管理とセキュリティ](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/struts1/struts1-learning-material-7.html)
HTTPセッションの活用、ログイン認証の実装、CSRF対策、XSS対策など、Webアプリケーションに必要なセキュリティ対策について学習します。

### [8. 国際化（i18n）とプロパティファイル](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/struts1/struts1-learning-material-8.html)
多言語対応アプリケーションの作成、リソースバンドルの使用、メッセージプロパティファイルの管理、ロケール切り替え機能の実装を学びます。

### [9. データベース連携と実践的開発](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/struts1/struts1-learning-material-9.html)
JDBCやO/Rマッパーとの連携、DAO パターンの実装、トランザクション管理、実際のCRUD操作を含む業務アプリケーションの開発手法を習得します。

### [10. デバッグ・テスト・デプロイメント](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/struts1/struts1-learning-material-10.html)
Strutsアプリケーションのデバッグ技術、JUnitを使った単体テスト、統合テスト、本番環境へのデプロイメント手順とベストプラクティスを学習します。

## 学習の進め方

1. **前提知識の確認**: Java基礎、Servlet/JSP、HTMLの知識があることを前提としています。不安がある場合は関連ガイドを先に学習してください。

2. **段階的な学習**: 必ず第1章から順番に学習を進めてください。各章の内容は前章の知識を前提として構成されています。

3. **実践重視**: 各章の実習課題は必ず実際にコードを書いて動作確認を行ってください。

4. **プロジェクト実践**: 学習を進めながら小規模なWebアプリケーション（例：書籍管理システム、顧客管理システム）を作成すると理解が深まります。

5. **最新動向の把握**: Struts 1.xは既に非推奨フレームワークですが、レガシーシステムの保守や移行作業で必要となる場合があります。

## 推奨学習期間

- **基礎習得コース** (1-5章): 3-4週間
- **実践開発コース** (6-8章): 2-3週間  
- **応用・運用コース** (9-10章): 1-2週間

**合計**: 6-9週間（1日1-2時間の学習を想定）

## 前提知識

### 必須
- **Java SE**: 基本構文、オブジェクト指向、例外処理
- **Servlet/JSP**: 基本的なWebアプリケーション開発
- **HTML/CSS**: Webページの基本構造
- **HTTP**: リクエスト/レスポンスの仕組み

### 推奨
- **SQL**: データベース操作の基本
- **XML**: 設定ファイルの理解
- **JavaScript**: クライアントサイド処理
- **Maven/Ant**: ビルドツールの基本

事前学習が必要な場合は、以下の関連ガイドを参照してください：
- [Java学習ガイド](../java/README.md)
- [JSP/Servlet学習ガイド](../jsp/README.md)
- [SQL学習ガイド](../../database/sql/README.md)

## 関連リソース

- [JSP チートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/web-tech/jsp-cheatsheet.html) - JSP構文の参考資料
- [Struts インフォグラフィック](https://fcircle-biz.github.io/tech_docs/cheatsheet/frameworks-libraries/struts-infographic.html) - Strutsの概要を視覚的にまとめた資料
- [Java チートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/programming-languages/java-cheatsheet.html) - Java基本構文の参考資料

## 学習目標

このガイドを完了すると、以下のスキルを身につけることができます：

- Struts 1.xフレームワークの理解と基本的な使用
- MVCアーキテクチャに基づくWebアプリケーション設計
- ActionクラスとActionFormを使った処理の実装
- struts-config.xmlによる設定管理
- JSPとStrutsタグライブラリの効果的な活用
- バリデーション機能による入力検証の実装
- セッション管理とセキュリティ対策の基礎
- 国際化対応アプリケーションの開発
- データベースと連携した実用的なWebアプリケーション開発
- テスト・デバッグ・デプロイメントの実践

## 注意事項

### Struts 1.x の現状について
- **開発終了**: Apache Struts 1.xは2013年にEOL（End of Life）に達しており、新規開発には推奨されません
- **セキュリティリスク**: セキュリティアップデートが提供されないため、本番環境での使用には注意が必要です
- **学習目的**: レガシーシステムの保守・移行や、MVCアーキテクチャの理解を目的とした学習に有用です
- **移行推奨**: 新規開発の場合は、Spring Boot、Struts 2.x、またはモダンなフレームワークの使用を検討してください

### 代替フレームワーク
現在推奨される代替フレームワーク：
- **Spring Boot**: エンタープライズJava開発の標準
- **Apache Struts 2.x**: Struts 1.xの後継版
- **JSF (JavaServer Faces)**: Java EE標準のWebフレームワーク

## 次のステップ

このガイドライン完了後は、以下の学習に進むことをお勧めします：

- [Spring Framework学習ガイドライン](../spring/README.md) - モダンなJava Webフレームワーク
- [JDBC学習ガイドライン](../jdbc/README.md) - データベース連携の詳細
- [JavaScript学習ガイドライン](../../frontend/javascript/README.md) - クライアントサイド開発