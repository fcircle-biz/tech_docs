# JSP基礎 スライド教材

この教材では、JSP（JavaServer Pages）の基本概念から実践的なWebアプリケーション開発まで、視覚的なスライド形式で効率的に学習できます。

## 教材形式
- **ファイル形式**: PDF（HTMLから高品質変換）
- **推奨スライド数**: 14枚（基本概念から実践応用まで）
- **学習時間**: 45-60分（詳細学習時）、20-30分（概要把握時）

## 前提条件
### 必要な環境
- PDFビューアー（Adobe Acrobat Reader推奨）
- JDK 8以降（実習を行う場合）
- Apache Tomcat 9.0以降またはその他のサーブレットコンテナ
- 統合開発環境（Eclipse、IntelliJ IDEA、VSCode等）

### 参考リソース
- [Oracle JSP Documentation](https://docs.oracle.com/javaee/5/tutorial/doc/bnagx.html)
- [Apache Tomcat Documentation](https://tomcat.apache.org/tomcat-9.0-doc/index.html)
- [JSP 2.3 Specification](https://jcp.org/en/jsr/detail?id=245)

### 前提知識
- **必須**: Java基本文法、HTML/CSSの基礎知識
- **推奨**: サーブレットの基礎、HTTPプロトコルの理解、SQLの基本

## スライド構成
### 1. タイトルスライド
- JSPロゴ・Javaアイコン表示
- 学習目標の概要（動的Webページの作成）
- 対象レベルの明示（初級〜中級）

### 2. 目次スライド (2枚目)
- 全体の学習フロー
- 各セクションの学習時間目安
- JSP基礎から実践応用への道筋

### 3. はじめに - JSPとは (3枚目)
- JSPの役割と特徴
- サーバーサイド技術としての位置付け
- JSPとサーブレットの関係
- 動的Webページ生成の仕組み

### 4. 基本概念 - JSPアーキテクチャ (4枚目)
- JSPライフサイクル（変換→コンパイル→実行）
- JSPコンテナの役割
- MVC（Model-View-Controller）パターンでのJSPの位置
- リクエスト・レスポンスの流れ

### 5. 環境準備 - 開発環境構築 (5枚目)
- Tomcatのインストールと設定
- IDEでのプロジェクト作成
- web.xmlの基本設定
- 最初のJSPページ作成（Hello World）

### 6. 基本構成 - JSP構文要素 (6枚目)
- ディレクティブ（<%@ page, include, taglib %>）
- スクリプトレット（<% %>）
- 式（<%= %>）
- 宣言（<%! %>）
- コメント（<%-- --%>）

### 7. 動作原理 - JSP暗黙オブジェクト (7枚目)
- request、response、sessionオブジェクト
- application、outオブジェクト
- pageContext、config、page、exception
- 各オブジェクトのスコープと用途

### 8. コア機能 - アクション要素 (8枚目)
- jsp:useBean（JavaBeansの利用）
- jsp:setProperty/getProperty
- jsp:include、jsp:forward
- jsp:param（パラメータ渡し）

### 9. 応用機能 - EL式とJSTL (9枚目)
- Expression Language（EL）の基本構文
- JSTLコアタグライブラリ
- 条件分岐（c:if、c:choose）
- 繰り返し処理（c:forEach）
- 変数操作とフォーマット

### 10. データ取扱 - フォーム処理とDB連携 (10枚目)
- HTMLフォームからのデータ受信
- リクエストパラメータの処理
- セッション管理とCookie
- JDBCを使用したデータベース連携

### 11. 実践応用 - ユーザー管理システム (11枚目)
- ログイン・ログアウト機能の実装
- ユーザー一覧表示（ページング対応）
- ユーザー登録・更新・削除
- エラーハンドリングとバリデーション

### 12. 学習指針 - ベストプラクティス (12枚目)
- JSPでのビジネスロジック分離
- カスタムタグの活用
- セキュリティ対策（XSS、SQLインジェクション）
- パフォーマンス最適化のポイント

### 13. よくある質問（FAQ）
- 文字化けの解決方法
- セッションタイムアウトの設定
- JSPとサーブレットの使い分け
- デプロイメントエラーの対処法

### 14. 参考リンク・資料
- 公式ドキュメントとチュートリアル
- オンライン学習プラットフォーム
- JSPコミュニティとフォーラム
- 次のステップ（Spring MVC、RESTful API）

## ダウンロード
- **PDFファイル**: [https://fcircle-biz.github.io/tech_docs/slide/java-ecosystem/jsp-basics/pdf/jsp-basics-slides.pdf](https://fcircle-biz.github.io/tech_docs/slide/java-ecosystem/jsp-basics/pdf/jsp-basics-slides.pdf)
- **HTMLソースファイル**: [GitHubリポジトリ](https://github.com/fcircle-biz/tech_docs/tree/main/docs/slide/java-ecosystem/jsp-basics)

## 視覚的特徴
- **大きなフォントサイズ**: 16px-48pxで優れた視認性
- **アイコン活用**: Font Awesome Javaアイコン（`fab fa-java`）とWebアイコン（`fa-globe`）で理解促進
- **2列レイアウト**: 効率的な情報配置
- **色分けシステム**: Javaオレンジ（#ED8B00）とWebブルー（#0078d4）の組み合わせ

## 学習目標
このスライド教材を完了すると、以下のスキルを身につけることができます：
- JSPの基本構文を理解し、動的なWebページを作成できる
- JSP暗黙オブジェクトを適切に活用できる
- EL式とJSTLを使用して効率的なビュー層を実装できる
- フォーム処理とデータベース連携を実装できる
- MVCパターンに基づいたWebアプリケーションを設計できる

## 関連教材
- **詳細ガイド**: [JSP完全ガイド（guide形式）](https://fcircle-biz.github.io/tech_docs/guide/java-ecosystem/jsp/)
- **実習チュートリアル**: [JSP/Servlet実践チュートリアル](https://fcircle-biz.github.io/tech_docs/tutorial/java-ecosystem/jsp-servlet/)
- **クイックリファレンス**: [JSPタグリファレンス](https://fcircle-biz.github.io/tech_docs/cheatsheet/java-ecosystem/jsp-tags/)

## 次のステップ
このスライド完了後は、以下の学習に進むことをお勧めします：
- [サーブレット基礎スライド教材](https://fcircle-biz.github.io/tech_docs/slide/java-ecosystem/servlet-basics/)
- [Spring MVC入門スライド](https://fcircle-biz.github.io/tech_docs/slide/java-ecosystem/spring-mvc/)
- [RESTful API設計ガイド](https://fcircle-biz.github.io/tech_docs/guide/java-ecosystem/rest-api/)
- [Thymeleafテンプレートエンジン入門](https://fcircle-biz.github.io/tech_docs/slide/java-ecosystem/thymeleaf/)

## 補足情報

### 教材の特徴
- **実践重視**: 実際のWebアプリケーション開発を通じた学習
- **段階的学習**: 基本構文から実践的な機能実装まで論理的に構成
- **最新技術対応**: EL式やJSTLなどモダンなJSP開発手法を紹介
- **セキュリティ重視**: XSS対策やSQLインジェクション防止を解説

### 想定学習者
- Java基本文法を習得済みの開発者
- Webアプリケーション開発に興味がある方
- サーバーサイドプログラミングを学びたい方
- 既存のJSPアプリケーションを保守・改修する必要がある方

### 学習のコツ
- 実際にTomcatサーバーを起動して動作確認する
- HTMLとJavaコードの連携を意識して学習する
- エラーメッセージを読み解く習慣をつける
- 小さな機能から段階的に実装を進める

### 実践的なコード例

#### 基本的なJSPページ
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSPサンプル</title>
</head>
<body>
    <h1>現在時刻: <%= new java.util.Date() %></h1>
    
    <%
        String name = request.getParameter("name");
        if (name != null && !name.isEmpty()) {
    %>
        <p>こんにちは、<%= name %>さん！</p>
    <% } %>
</body>
</html>
```

#### JSTLを使用した繰り返し処理
```jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<body>
    <h2>ユーザー一覧</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>名前</th>
            <th>メール</th>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
```

#### フォーム処理の例
```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h2>ユーザー登録</h2>
    <form action="register.jsp" method="post">
        <label>名前: <input type="text" name="name" required></label><br>
        <label>メール: <input type="email" name="email" required></label><br>
        <label>パスワード: <input type="password" name="password" required></label><br>
        <button type="submit">登録</button>
    </form>
    
    <%
        if ("POST".equals(request.getMethod())) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            // データベースへの登録処理
            out.println("<p>登録完了: " + name + "</p>");
        }
    %>
</body>
</html>
```

#### セッション管理の例
```jsp
<%@ page session="true" %>
<%
    // セッションにデータを保存
    session.setAttribute("username", "太郎");
    session.setAttribute("loginTime", new java.util.Date());
    
    // セッションからデータを取得
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<body>
    <h2>ようこそ、<%= username %>さん</h2>
    <p>ログイン時刻: <%= session.getAttribute("loginTime") %></p>
    <p>セッションID: <%= session.getId() %></p>
    
    <form action="logout.jsp" method="post">
        <button type="submit">ログアウト</button>
    </form>
</body>
</html>
```

### 重要なポイント

#### JSPのライフサイクル
1. **変換フェーズ**: JSPファイルがサーブレットのJavaソースコードに変換
2. **コンパイルフェーズ**: Javaソースコードがクラスファイルにコンパイル
3. **初期化フェーズ**: jspInit()メソッドの実行
4. **実行フェーズ**: _jspService()メソッドでリクエスト処理
5. **破棄フェーズ**: jspDestroy()メソッドの実行

#### セキュリティ対策
- **XSS対策**: ユーザー入力は必ずエスケープ処理
- **SQLインジェクション対策**: PreparedStatementの使用
- **CSRF対策**: トークンを使用した検証
- **セッション管理**: 適切なタイムアウト設定

#### パフォーマンス最適化
- **プリコンパイル**: デプロイ前にJSPをコンパイル
- **インクルードの使い分け**: 静的includeと動的includeの適切な選択
- **セッション使用の最小化**: 必要な情報のみセッションに保存
- **コネクションプーリング**: データベース接続の効率化

**注意**: 実際のHTMLファイルとPDFの作成は、slide-creator-step2エージェントで行います。このREADME.mdは、教材の設計書として機能します。