# ASP.NET (VB.NET) 学習ガイドライン

このガイドラインでは、ASP.NET Web FormsをVB.NETで開発する基礎を入門者向けに段階的に学習するためのカリキュラムを提供しています。

## 前提条件

### 必要な環境
- Visual Studio 2019 以上（Community Edition可）または Visual Studio Code
- .NET Framework 4.7.2 以上 または .NET 5/6/7/8
- IIS Express（Visual Studioに含まれる）
- SQL Server Express または SQL Server LocalDB（データベース学習用）

### 参考リソース
- [ASP.NET 公式ドキュメント](https://docs.microsoft.com/ja-jp/aspnet/)
- [VB.NET 言語リファレンス](https://docs.microsoft.com/ja-jp/dotnet/visual-basic/)
- [Visual Studio ドキュメント](https://docs.microsoft.com/ja-jp/visualstudio/)

### 前提知識
- **必須**: VB.NET基礎文法（変数、条件分岐、ループ、関数）
- **推奨**: HTML/CSS基礎知識、データベース基本概念、SQL基礎

## 学習コンテンツ

### [1. ASP.NET基礎とセットアップ](https://fcircle-biz.github.io/tech_docs/guide/web/aspnet-vb/aspnet-vb-learning-material-1.html)
ASP.NET Web Formsの概要、開発環境のセットアップ、初回Webアプリケーションの作成と実行について学習します。

### [2. VB.NET言語基礎復習](https://fcircle-biz.github.io/tech_docs/guide/web/aspnet-vb/aspnet-vb-learning-material-2.html)
ASP.NET開発に必要なVB.NET言語機能の復習、オブジェクト指向プログラミング、.NET Frameworkの基本について学習します。

### [3. Web Forms基本](https://fcircle-biz.github.io/tech_docs/guide/web/aspnet-vb/aspnet-vb-learning-material-3.html)
Web Formsページの構造、分離コードビハインド、ASP.NETページライフサイクル、基本的なHTMLコントロールについて学習します。

### [4. サーバーコントロールとイベント処理](https://fcircle-biz.github.io/tech_docs/guide/web/aspnet-vb/aspnet-vb-learning-material-4.html)
ASP.NETサーバーコントロール、ポストバックメカニズム、イベント駆動プログラミング、検証コントロールについて学習します。

### [5. データベース連携（ADO.NET）](https://fcircle-biz.github.io/tech_docs/guide/web/aspnet-vb/aspnet-vb-learning-material-5.html)
ADO.NETを使用したデータベース接続、データの取得・更新・削除、DataGridViewとデータバインディングについて学習します。

### [6. セッション管理と状態管理](https://fcircle-biz.github.io/tech_docs/guide/web/aspnet-vb/aspnet-vb-learning-material-6.html)
HTTP無状態性の問題、セッション状態、ViewState、Application状態、Cookieの使用方法について学習します。

### [7. 認証とセキュリティ](https://fcircle-biz.github.io/tech_docs/guide/web/aspnet-vb/aspnet-vb-learning-material-7.html)
ASP.NET認証メカニズム、フォーム認証、ロールベースセキュリティ、入力検証とセキュリティ対策について学習します。

### [8. エラーハンドリングとデバッグ](https://fcircle-biz.github.io/tech_docs/guide/web/aspnet-vb/aspnet-vb-learning-material-8.html)
例外処理、カスタムエラーページ、ログ出力、Visual Studioデバッグ機能、パフォーマンス最適化について学習します。

## 学習の進め方

1. **環境準備**: Visual StudioとSQL Server Expressをインストールし、開発環境を構築してください
2. **順次学習**: 第1章から順番に学習を進め、各章の実習を必ず実行してください
3. **実践演習**: 簡単なWebアプリケーション（顧客管理システムなど）を作成して理解を深めてください
4. **デバッグ実践**: エラーが発生した際のデバッグ手法を実際に体験してください

## 推奨学習期間

- **基礎習得コース** (1-4章): 2-3週間
- **実践活用コース** (5-8章): 3-4週間

## 関連リソース

- [PHP学習ガイドライン](../php/README.md)
- [VBA初心者向けのチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/fundamentals/vba-cheatsheet.html)
- [SQL初心者向けのチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/fundamentals/sql-cheatsheet.html)

## 学習目標

このガイドを完了すると、以下のスキルを身につけることができます：

- ASP.NET Web Formsを使用した基本的なWebアプリケーションの作成
- VB.NETによるサーバーサイドプログラミングの実装
- データベースと連携した動的Webページの開発
- サーバーコントロールを活用したユーザーインターフェースの構築
- セッション管理による状態の維持とユーザー体験の向上
- 基本的なセキュリティ対策と認証機能の実装
- エラーハンドリングとデバッグによる堅牢なアプリケーション開発
- Visual Studioを使用した効率的な開発ワークフロー

## 次のステップ

このガイドライン完了後は、以下の学習に進むことをお勧めします：

- [ASP.NET Core学習](../../microsoft/aspnet-core/README.md)
- [Entity Framework学習](../../microsoft/entity-framework/README.md)
- [JavaScript中級学習ガイド](../../frontend/javascript-intermediate/README.md)