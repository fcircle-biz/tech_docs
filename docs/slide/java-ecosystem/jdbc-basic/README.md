# JDBC基本 スライド教材

この教材では、JDBC（Java Database Connectivity）の基本概念から実践的なデータベース操作まで、視覚的なスライド形式で効率的に学習できます。

## 教材形式
- **ファイル形式**: PDF（HTMLから高品質変換）
- **推奨スライド数**: 14枚（基本概念から実践応用まで）
- **学習時間**: 45-60分（詳細学習時）、20-30分（概要把握時）

## 前提条件
### 必要な環境
- PDFビューアー（Adobe Acrobat Reader推奨）
- JDK 8以降（実習を行う場合）
- データベース環境（PostgreSQL、MySQL、Oracle等）
- JDBCドライバー（使用するデータベースに対応）

### 参考リソース
- [Oracle JDBC Documentation](https://docs.oracle.com/javase/8/docs/technotes/guides/jdbc/)
- [PostgreSQL JDBC Driver](https://jdbc.postgresql.org/)
- [MySQL Connector/J](https://dev.mysql.com/downloads/connector/j/)

### 前提知識
- **必須**: Java基本文法、SQLの基礎知識
- **推奨**: オブジェクト指向プログラミング、例外処理の理解

## スライド構成
### 1. タイトルスライド
- JDBCロゴ・データベース接続アイコン表示
- 学習目標の概要（Javaとデータベースの橋渡し）
- 対象レベルの明示（中級）

### 2. 目次スライド (2枚目)
- 全体の学習フロー
- 各セクションの学習時間目安
- JDBC基礎から実践応用への道筋

### 3. はじめに - JDBCとは (3枚目)
- JDBCの役割と重要性
- データベース独立性の概念
- JDBCアーキテクチャの全体像
- 主要なJDBCドライバーの種類

### 4. 基本概念 - JDBC API構造 (4枚目)
- java.sqlパッケージの主要インターフェース
- Driver、Connection、Statement、ResultSet
- PreparedStatementとCallableStatement
- DataSourceとコネクションプーリング

### 5. 環境準備 - ドライバー設定 (5枚目)
- JDBCドライバーの入手とセットアップ
- クラスパスへの追加方法
- Maven/Gradleでの依存関係管理
- 接続URLの構文と例

### 6. 基本構成 - 接続の確立 (6枚目)
- DriverManagerによる接続
- 接続文字列の構成要素
- 認証情報の管理
- 接続テストプログラムの実装

### 7. 動作原理 - SQLの実行フロー (7枚目)
- Statementの作成と実行
- executeQuery vs executeUpdate
- バッチ処理の仕組み
- トランザクション管理

### 8. コア機能 - PreparedStatement活用 (8枚目)
- SQLインジェクション対策
- パラメータバインディング
- パフォーマンスの向上
- 実装例：ユーザー検索機能

### 9. 応用機能 - ResultSet操作 (9枚目)
- ResultSetの型と並行性
- カーソル移動とデータ取得
- メタデータの活用
- 大量データの効率的な処理

### 10. データ取扱 - トランザクション制御 (10枚目)
- 自動コミットとマニュアル制御
- 分離レベルの設定
- セーブポイントの活用
- ロールバック処理の実装

### 11. 実践応用 - DAOパターン実装 (11枚目)
- Data Access Object設計
- CRUDメソッドの実装
- 例外処理とリソース管理
- コネクションプーリングの統合

### 12. 学習指針 - ベストプラクティス (12枚目)
- try-with-resourcesの活用
- コネクション管理の最適化
- SQLビルダーとORM導入
- パフォーマンスチューニング

### 13. よくある質問（FAQ）
- 接続エラーのトラブルシューティング
- ResultSetクローズ忘れの対処
- 文字化けの解決方法
- デッドロックの回避策

### 14. 参考リンク・資料
- 公式JDBCドキュメント
- 各種データベースドライバー
- コネクションプール実装（HikariCP等）
- 次のステップ（JPA、MyBatis）

## ダウンロード
- **PDFファイル**: [https://fcircle-biz.github.io/tech_docs/slide/java-ecosystem/jdbc-basic/pdf/jdbc-basic-slides.pdf](https://fcircle-biz.github.io/tech_docs/slide/java-ecosystem/pdf/jdbc-basic/jdbc-basic-slides.pdf)
- **HTMLソースファイル**: [GitHubリポジトリ](https://github.com/fcircle-biz/tech_docs/tree/main/docs/slide/java-ecosystem/jdbc-basic)

## 視覚的特徴
- **大きなフォントサイズ**: 16px-48pxで優れた視認性
- **アイコン活用**: Font Awesomeデータベースアイコン（`fa-database`）で理解促進
- **2列レイアウト**: 効率的な情報配置
- **色分けシステム**: Javaオレンジ（#ED8B00）とデータベースブルー（#336791）の組み合わせ

## 学習目標
このスライド教材を完了すると、以下のスキルを身につけることができます：
- JDBCを使用してJavaアプリケーションからデータベースに接続できる
- PreparedStatementを使用した安全なSQL実行ができる
- トランザクション制御を適切に実装できる
- ResultSetを効率的に処理してデータを取得できる
- DAOパターンを使用した保守性の高いデータアクセス層を設計できる

## 関連教材
- **詳細ガイド**: [JDBC完全ガイド（guide形式）](https://fcircle-biz.github.io/tech_docs/guide/java-ecosystem/jdbc/)
- **実習チュートリアル**: [JSP/Servlet/JDBCチュートリアル](https://fcircle-biz.github.io/tech_docs/tutorial/java-ecosystem/jsp-servlet-jdbc/)
- **クイックリファレンス**: [JDBCチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/databases/jdbc-cheatsheet.html)

## 次のステップ
このスライド完了後は、以下の学習に進むことをお勧めします：
- [Spring Data JPA入門スライド](https://fcircle-biz.github.io/tech_docs/slide/java-ecosystem/spring-data-jpa/)
- [MyBatis実践ガイド](https://fcircle-biz.github.io/tech_docs/guide/java-ecosystem/mybatis/)
- [Hibernateチュートリアル](https://fcircle-biz.github.io/tech_docs/tutorial/java-ecosystem/hibernate/)
- [データベース設計基礎](https://fcircle-biz.github.io/tech_docs/slide/database/database-design/)

## 補足情報

### 教材の特徴
- **実践重視**: 実際のデータベース操作を通じた学習
- **セキュリティ重視**: SQLインジェクション対策を徹底解説
- **パフォーマンス考慮**: 効率的なデータアクセス手法を紹介
- **エラー処理**: 実践的な例外処理パターンを解説

### 想定学習者
- Javaの基本文法を習得済みの開発者
- データベース連携アプリケーションを開発したい方
- SQLの基礎知識を持つエンジニア
- エンタープライズアプリケーション開発に携わる方

### 学習のコツ
- 実際のデータベースに接続して動作確認する
- 様々なSQL文を実行して結果を確認する
- エラーハンドリングを意識的に実装する
- パフォーマンスを測定しながら最適化を学ぶ

### 実践的なコード例

#### 基本的な接続例
```java
// データベース接続
String url = "jdbc:postgresql://localhost:5432/mydb";
String user = "username";
String password = "password";

try (Connection conn = DriverManager.getConnection(url, user, password)) {
    System.out.println("データベースに接続しました");
} catch (SQLException e) {
    e.printStackTrace();
}
```

#### PreparedStatementの使用例
```java
String sql = "SELECT * FROM users WHERE email = ? AND status = ?";

try (Connection conn = getConnection();
     PreparedStatement pstmt = conn.prepareStatement(sql)) {
    
    pstmt.setString(1, "user@example.com");
    pstmt.setString(2, "ACTIVE");
    
    try (ResultSet rs = pstmt.executeQuery()) {
        while (rs.next()) {
            System.out.println("User: " + rs.getString("name"));
        }
    }
} catch (SQLException e) {
    e.printStackTrace();
}
```

#### トランザクション処理例
```java
Connection conn = null;
try {
    conn = getConnection();
    conn.setAutoCommit(false);
    
    // 複数のデータベース操作
    updateUser(conn, userId, userData);
    insertLog(conn, userId, "UPDATE");
    
    conn.commit();
    System.out.println("トランザクション成功");
    
} catch (SQLException e) {
    if (conn != null) {
        try {
            conn.rollback();
            System.out.println("ロールバック実行");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
} finally {
    if (conn != null) {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
```

#### DAOパターンの実装例
```java
public class UserDAO {
    private DataSource dataSource;
    
    public User findById(Long id) throws SQLException {
        String sql = "SELECT * FROM users WHERE id = ?";
        
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setLong(1, id);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return mapResultSetToUser(rs);
                }
            }
        }
        return null;
    }
    
    private User mapResultSetToUser(ResultSet rs) throws SQLException {
        User user = new User();
        user.setId(rs.getLong("id"));
        user.setName(rs.getString("name"));
        user.setEmail(rs.getString("email"));
        return user;
    }
}
```

### 重要なポイント

#### リソース管理
- **必ず**Connection、Statement、ResultSetをクローズする
- try-with-resourcesを活用して自動クローズを実現
- コネクションプールを使用して接続を再利用

#### セキュリティ
- PreparedStatementを使用してSQLインジェクションを防ぐ
- データベース接続情報を適切に管理（環境変数、設定ファイル）
- 最小権限の原則に従ったデータベースユーザー設定

#### パフォーマンス
- バッチ処理で大量データを効率的に処理
- 適切なフェッチサイズの設定
- インデックスを考慮したSQL作成

**注意**: 実際のHTMLファイルとPDFの作成は、slide-creator-step2エージェントで行います。このREADME.mdは、教材の設計書として機能します。