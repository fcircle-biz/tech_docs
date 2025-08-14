# ASP.NET Core MVC (VB.NET) スライド教材

この教材では、VB.NETを使用したASP.NET Core MVCの重要概念を視覚的なスライド形式で効率的に学習できます。

## 教材形式
- **ファイル形式**: PDF（HTMLから高品質変換）
- **推奨スライド数**: 12-15枚（包括的な内容構成）
- **学習時間**: 60-75分（詳細学習時）、30-40分（概要把握時）

## 前提条件
### 必要な環境
- PDFビューアー（Adobe Acrobat Reader推奨）
- .NET 6.0以降のSDK（開発環境）
- Visual Studio 2022またはVisual Studio Code
- SQL Server Express（データベース開発用）

### 参考リソース
- [ASP.NET Core公式ドキュメント](https://docs.microsoft.com/ja-jp/aspnet/core/)
- [VB.NET言語リファレンス](https://docs.microsoft.com/ja-jp/dotnet/visual-basic/)
- [Entity Framework Core ドキュメント](https://docs.microsoft.com/ja-jp/ef/core/)

### 前提知識
- **必須**: VB.NETの基本文法、HTML/CSS基礎、HTTPプロトコルの基本理解
- **推奨**: ASP.NETの基礎知識、SQLの基本操作、オブジェクト指向プログラミング

## スライド構成
### 1. タイトルスライド
- ASP.NET Core MVCロゴとVB.NETアイコン表示
- 学習目標の概要（モダンWebアプリケーション開発）
- 対象レベルの明示（初級〜中級開発者）

### 2. 目次スライド (2枚目)
- 全体の学習フロー（概念理解→環境構築→実装→デプロイ）
- 各セクションの学習時間目安

### 3. ASP.NET Core MVC概要 (3枚目)
- フレームワークの特徴（クロスプラットフォーム、高性能、オープンソース）
- MVCアーキテクチャパターンの説明
- VB.NETでの開発メリット
- 従来のASP.NETとの違い

### 4. 開発環境セットアップ (4枚目)
- .NET SDKインストール手順
- Visual Studio設定（VB.NET開発環境）
- プロジェクトテンプレートの選択
- NuGetパッケージ管理

### 5. プロジェクト構造とMVCパターン (5枚目)
- ソリューション構造の理解
- Controllers、Views、Modelsフォルダの役割
- wwwrootとスタティックファイル
- Program.vbとStartup設定

### 6. コントローラーとアクション (6枚目)
- VB.NETでのコントローラー実装
- アクションメソッドの定義
- ルーティングとURLマッピング
- HTTPメソッドとアトリビュート

### 7. Razorビューエンジン (7枚目)
- Razor構文（VB.NET版）の特徴
- @Code...End Codeブロック
- レイアウトとセクション
- 部分ビューとビューコンポーネント

### 8. モデルとデータバインディング (8枚目)
- ViewModelパターンの実装
- モデルバインディングの仕組み
- データアノテーションによる検証
- カスタムバリデーション

### 9. Entity Framework Core統合 (9枚目)
- DbContextのVB.NET実装
- Code Firstアプローチ
- マイグレーション管理
- LINQ to Entitiesクエリ

### 10. 認証・認可とセキュリティ (10枚目)
- ASP.NET Core Identity統合
- 認証ミドルウェアの設定
- ロールベースアクセス制御
- セキュリティベストプラクティス

### 11. Web APIとサービス (11枚目)
- RESTful API設計原則
- JSONシリアライゼーション
- 依存性注入（DI）パターン
- サービスレイヤーの実装

### 12. デプロイメントと運用 (12枚目)
- IISへのデプロイ手順
- Azure App Serviceへの展開
- 環境別設定管理
- ロギングと監視

### 13. よくある質問（FAQ）
- VB.NET特有の注意点
- C#からの移行ガイド
- パフォーマンス最適化
- トラブルシューティング

### 14. 参考リンク・資料
- Microsoft Learn学習パス
- VB.NET開発者コミュニティ
- サンプルプロジェクト
- 次のステップへの案内

## ダウンロード
- **PDFファイル**: [aspnet-vb-core-mvc-slides.pdf](./aspnet-vb-core-mvc-slides.pdf) （490KB）
- **HTMLソースファイル**: このディレクトリ内の slide-XX-*.html ファイル（全14スライド）

## 視覚的特徴
- **大きなフォントサイズ**: 16px-48pxで優れた視認性
- **アイコン活用**: Font Awesome .NETアイコンで理解促進
- **2列レイアウト**: 効率的な情報配置
- **色分けシステム**: Tailwind CSS + Microsoft Blueベース（#0078d4）

## 学習目標
このスライド教材を完了すると、以下のスキルを身につけることができます：
- VB.NETでASP.NET Core MVCアプリケーションを構築できる
- MVCパターンを理解し、適切に実装できる
- Entity Framework Coreを使用してデータベース操作を行える
- 認証・認可機能を実装し、セキュアなWebアプリを開発できる
- RESTful APIを設計・実装できる
- 本番環境へのデプロイメントと運用管理ができる

## 関連教材
- **詳細ガイド**: [ASP.NET Core MVC詳細学習ガイド](https://fcircle-biz.github.io/tech_docs/guide/dotnet/aspnet-core/)
- **実習チュートリアル**: [VB.NET MVCハンズオンチュートリアル](https://fcircle-biz.github.io/tech_docs/tutorial/dotnet/aspnet-vb-core-mvc/)
- **クイックリファレンス**: [VB.NET構文チートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/dotnet/vb-net/)

## 次のステップ
このスライド完了後は、以下の学習に進むことをお勧めします：
- [Blazor WebAssembly入門スライド](https://fcircle-biz.github.io/tech_docs/slide/dotnet/blazor/)
- [ASP.NET Core Web API詳細ガイド](https://fcircle-biz.github.io/tech_docs/guide/dotnet/aspnet-core-api/)
- [マイクロサービスアーキテクチャ実践](https://fcircle-biz.github.io/tech_docs/tutorial/dotnet/microservices/)

## 備考
このスライド教材は、VB.NET開発者がASP.NET Core MVCフレームワークを習得するために設計されています。C#での開発が主流となっている中でも、既存のVB.NET資産を活用しながらモダンなWebアプリケーション開発を実現するための実践的な内容を提供します。各スライドでは、VB.NET特有の構文や注意点を明確に示し、スムーズな学習体験を提供します。