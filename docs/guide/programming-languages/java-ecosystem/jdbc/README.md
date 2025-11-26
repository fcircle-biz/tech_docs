# JDBC基礎 学習ガイドライン

このガイドラインでは、JDBC（Java Database Connectivity）の基礎をプログラミング初心者向けに段階的に学習するためのカリキュラムを提供しています。JDBCはJavaプログラムからデータベースに接続し、データを操作するための標準APIです。

## 前提条件

### 必要な環境
- **JDK（Java Development Kit）**: バージョン11以上を推奨
- **IDE（統合開発環境）**: Eclipse、IntelliJ IDEA、VSCodeのいずれか
- **データベース**: PostgreSQL（推奨）またはMySQL
- **JDBCドライバ**: 使用するデータベースに対応したJDBCドライバ

### 参考リソース
- [Oracle公式 JDBCドキュメント](https://docs.oracle.com/javase/tutorial/jdbc/index.html)
- [PostgreSQL JDBCドライバ公式サイト](https://jdbc.postgresql.org/)
- [MySQL Connector/J公式サイト](https://dev.mysql.com/downloads/connector/j/)

### 前提知識
- **必須**: Java言語の基礎（変数、データ型、制御構文、クラスとオブジェクト、例外処理）
- **必須**: SQLの基礎（SELECT、INSERT、UPDATE、DELETE文の理解）
- **推奨**: リレーショナルデータベースの基本概念（テーブル、カラム、主キー、外部キー）

## 学習コンテンツ

### [1. JDBCの概要と環境構築](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/jdbc/jdbc-learning-material-01.html)
JDBCとは何か、なぜJDBCが必要なのかを理解し、開発環境のセットアップを行います。JDBCアーキテクチャの基本構造とドライバの役割についても解説します。

### [2. データベース接続の基本](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/jdbc/jdbc-learning-material-02.html)
DriverManagerを使用したデータベース接続方法を学びます。接続文字列（JDBC URL）の構成要素、Connection・Statement・ResultSetの3つの主要オブジェクトの役割と使い方を習得します。

### [3. データの取得（SELECT文）](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/jdbc/jdbc-learning-material-03.html)
SELECT文を使用したデータの取得方法を学びます。ResultSetからのデータ読み取り、様々なデータ型の取得方法、条件付きクエリの実行方法を習得します。

### [4. データの登録・更新・削除](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/jdbc/jdbc-learning-material-04.html)
INSERT、UPDATE、DELETE文を使用したデータ操作を学びます。executeUpdate()メソッドの使い方と、操作結果の確認方法を習得します。

### [5. PreparedStatementの活用](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/jdbc/jdbc-learning-material-05.html)
パラメータ化されたクエリを実行するPreparedStatementの使い方を学びます。SQLインジェクション対策の重要性と、安全なデータベースアクセスの実現方法を理解します。

### [6. 例外処理とリソース管理](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/jdbc/jdbc-learning-material-06.html)
JDBCプログラミングにおける例外処理の重要性と実装方法を学びます。try-with-resources構文を使用した効率的なリソース管理と、SQLExceptionの適切な処理方法を習得します。

### [7. トランザクション管理](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/jdbc/jdbc-learning-material-07.html)
複数のデータベース操作を一つの単位として管理するトランザクションの概念を学びます。commit、rollbackの使い方と、データの整合性を保つ方法を習得します。

### [8. DAOパターン入門](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/jdbc/jdbc-learning-material-08.html)
データアクセス処理を分離するDAOパターンの基本を学びます。保守性と再利用性の高いコード設計の考え方を習得します。

### [9. 実践演習 - 商品管理システム](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/jdbc/jdbc-learning-material-09.html)
これまで学んだ知識を総合的に活用して、簡単な商品管理システムを構築します。設計から実装、テストまでの一連の流れを体験します。

### [10. よくある問題と解決策](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/jdbc/jdbc-learning-material-10.html)
JDBC開発でよく遭遇するエラーとその解決方法、デバッグのコツ、パフォーマンス改善のヒントなど、実践的なトラブルシューティング手法を学びます。

## 学習の進め方

1. **順番に学習する**: 1章から順番に進めることで、基礎から応用へと段階的に理解を深められます
2. **コードを実際に書く**: 各章のサンプルコードは必ず自分で入力し、実行して動作を確認しましょう
3. **練習問題に取り組む**: 各章末の練習問題で理解度を確認し、分からない部分は前の章に戻って復習しましょう
4. **エラーを恐れない**: エラーが発生したら、エラーメッセージをよく読み、原因を考える習慣をつけましょう

## 推奨学習期間

- **基礎習得コース** (1-6章): 2-3週間
  - データベース接続、基本的なCRUD操作、例外処理までをカバー
- **実践活用コース** (7-10章): 2-3週間
  - トランザクション管理、DAOパターン、実践的なシステム開発を習得

## 関連リソース

- [Java基礎チートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/fundamentals/java-cheatsheet.html)
- [JDBCチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/fundamentals/jdbc-cheatsheet.html)
- [SQL基礎チートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/fundamentals/sql-cheatsheet.html)
- [Java学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/java/)
- [SQL学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/database/sql/)

## 学習目標

このガイドを完了すると、以下のスキルを身につけることができます：

- JDBCを使用してJavaプログラムからデータベースに接続できる
- SELECT、INSERT、UPDATE、DELETE文を使用したデータ操作ができる
- PreparedStatementを使用して安全なデータベースアクセスを実装できる
- 適切な例外処理とリソース管理を行えるコードを書ける
- トランザクションを使用してデータの整合性を保つことができる
- DAOパターンを使用した保守性の高いコード設計ができる

## 次のステップ

このガイドライン完了後は、以下の学習に進むことをお勧めします：

- [Spring Framework学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/spring/) - Spring Data JPAを使用した高度なデータアクセス
- [JUnit学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/programming-languages/java-ecosystem/junit/) - JDBCプログラムの単体テスト手法
