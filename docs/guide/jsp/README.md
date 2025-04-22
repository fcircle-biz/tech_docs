# JSP/Servlet学習ガイドライン

このガイドラインでは、JSP（JavaServer Pages）とServletを初心者から中級者レベルまで段階的に学習するためのカリキュラムを提供しています。JSP/Servletは、Javaを使用した動的なWebアプリケーション開発のための技術であり、多くのJava Web開発で広く使用されています。各トピックには詳細な解説へのリンクが含まれています。

## 学習コンテンツ

### [1. 事前準備](https://fcircle-biz.github.io/tech_docs/guide/jsp/jsp-learning-material-1.html)
JSP/Servletの概要、Webアプリケーション開発の基本概念、JDK 21のインストール方法、Apache Tomcatのセットアップ、IDE環境の設定、Webアプリケーションの基本構造について解説します。

### [2. JSPの基本理解](https://fcircle-biz.github.io/tech_docs/guide/jsp/jsp-learning-material-2.html)
JSPの基本概念とその役割、JSPがどのように処理されるか、JSPの主要な構文要素、簡単なJSPファイルの作成と実行方法、JSP開発のベストプラクティスについて学びます。

### [3. スクリプトレットと式](https://fcircle-biz.github.io/tech_docs/guide/jsp/jsp-learning-material-3.html)
JSPの基本的な構文要素であるスクリプトレット（<% %>）、式（<%= %>）、宣言（<%! %>）の使い方、JSPページ内でJavaコードを記述する方法と、動的にコンテンツを生成する方法について学びます。

### [4. ディレクティブとインポート](https://fcircle-biz.github.io/tech_docs/guide/jsp/jsp-learning-material-4.html)
JSPページの動作を制御するpage ディレクティブ、JavaクラスとJSPのインポート機能、コードの再利用を可能にするinclude ディレクティブ、カスタムタグを使用するためのtaglib ディレクティブ、JSPでの例外処理とエラーページの設定について学びます。

### [5. アクションとJavaBeans](https://fcircle-biz.github.io/tech_docs/guide/jsp/jsp-learning-material-5.html)
JSPアクションタグ（jsp:useBean, jsp:setProperty, jsp:getProperty）の使用方法、JavaBeansの作成と活用、フォームデータの処理方法、MVCアーキテクチャの基本概念について学びます。

### [6. JSP標準タグライブラリ(JSTL)](https://fcircle-biz.github.io/tech_docs/guide/jsp/jsp-learning-material-6.html)
JSTLの概要と主要なタグライブラリ、Core（c）タグライブラリ、Formatting（fmt）タグライブラリ、Functions（fn）タグライブラリ、SQL（sql）タグライブラリ、JSTLを使用したデータアクセスと表示について学びます。

### [7. 式言語（EL）](https://fcircle-biz.github.io/tech_docs/guide/jsp/jsp-learning-material-7.html)
JSP式言語（EL）の基本構文と機能、スコープ内の属性へのアクセス方法、コレクションやJavaBeansのプロパティへのアクセス方法、暗黙オブジェクト（pageContext, param, header など）、演算子と関数の使用方法について学びます。

### [8. Servletの基礎](https://fcircle-biz.github.io/tech_docs/guide/jsp/jsp-learning-material-8.html)
Servletの基本概念とライフサイクル、HTTPリクエスト・レスポンスの処理方法、フォームデータの取得と処理、セッション管理、Cookie の使用方法、リダイレクトとフォワードの違いについて学びます。

### [9. Servletとデータベース連携](https://fcircle-biz.github.io/tech_docs/guide/jsp/jsp-learning-material-9.html)
JDBCを使用したデータベース接続、Servletからのデータベースアクセス、トランザクション管理、コネクションプーリング、DAOパターンの実装、データアクセス層の設計と実装について学びます。

### [10. 総合プロジェクト - シンプルなWebアプリケーション](https://fcircle-biz.github.io/tech_docs/guide/jsp/jsp-learning-material-10.html)
これまでに学んだJSP/Servletの知識を活用して、実践的なWebアプリケーションを構築します。要件分析、データベース設計、MVCアーキテクチャの実装、セキュリティ対策、テスト、デプロイメントまでの一連の開発プロセスを学びます。

## 学習の進め方

1. 初めてJSP/Servletを学ぶ方は、必ず「1. 事前準備」から順番に学習を進めてください。
2. 各章の実習課題に取り組み、実際にコードを書いて動作確認することで理解を深めましょう。
3. 各章末の理解度確認テストで、学習内容の定着を確認してください。
4. 応用力を身につけるために、最終章の総合プロジェクトにもチャレンジしてみましょう。

## 前提条件

このガイドを効果的に学ぶためには、以下の知識・環境が必要です：

- Java言語の基本的な知識（変数、制御構文、クラス、例外処理など）
- HTMLとCSSの基礎知識
- リレーショナルデータベースとSQLの基礎知識
- 開発環境：JDK 21以上、Apache Tomcat 10.x、お好みのIDE（Eclipse、IntelliJ IDEAなど）

## 関連リソース

- [Java初心者向けのチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet1/java-cheatsheet.html)
- [HTML/CSSチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet1/html-css-cheatsheet.html)
- [SQL基礎チートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet1/sql-cheatsheet.html)
- [JDBC学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/jdbc/)