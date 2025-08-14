# ASP.NET WebForms (VB.NET) スライド教材

この教材では、ASP.NET WebFormsをVB.NETで開発する際の重要概念を視覚的なスライド形式で効率的に学習できます。イベント駆動型のWebアプリケーション開発手法を段階的に理解できる構成となっています。

## 教材形式
- **ファイル形式**: PDF（SVGから高品質変換）
- **推奨スライド数**: 12枚
- **学習時間**: 45-60分（詳細学習時）、20-30分（概要把握時）

## 前提条件
### 必要な環境
- PDFビューアー（Adobe Acrobat Reader推奨）
- Visual Studio 2019以降（Community版以上）
- .NET Framework 4.7.2以降 または .NET 6.0以降
- IIS Express（Visual Studio付属）

### 参考リソース
- [Microsoft ASP.NET WebForms公式ドキュメント](https://docs.microsoft.com/ja-jp/aspnet/web-forms/)
- [Visual Basic言語リファレンス](https://docs.microsoft.com/ja-jp/dotnet/visual-basic/)
- [ASP.NET WebFormsコントロールリファレンス](https://docs.microsoft.com/ja-jp/aspnet/web-forms/overview/older-versions-getting-started/getting-started-with-ef-5-using-mvc-4/implementing-basic-crud-functionality-with-the-entity-framework-in-asp-net-mvc-application)

### 前提知識
- **必須**: VB.NETの基本文法（変数宣言、制御構文、サブルーチン/関数）
- **必須**: HTMLとCSSの基礎知識
- **推奨**: オブジェクト指向プログラミングの基本概念
- **推奨**: HTTPプロトコルの基礎理解

## スライド構成
### 1. タイトルスライド
- ASP.NET WebFormsロゴとVB.NETアイコン表示
- 「イベント駆動型Webアプリケーション開発」のサブタイトル
- 対象レベル: 初級〜中級
- 学習目標の概要（サーバーコントロール、ポストバック、状態管理）

### 2. 目次スライド (2枚目)
- 全体の学習フロー（概念理解→環境構築→実装→応用）
- 各セクションの学習時間目安
- WebFormsの特徴アイコン（イベント駆動、サーバーコントロール、状態管理）

### 3. はじめに - WebFormsとは (3枚目)
- ASP.NET WebFormsの位置づけ（.NETエコシステム内）
- デスクトップアプリ開発に近いWeb開発手法
- イベント駆動型プログラミングモデルの図解
- MVCやBlazorとの違いを簡潔に説明
- 適用領域: エンタープライズ業務システム、管理画面

### 4. 基本概念 - ページライフサイクル (4枚目)
- ページライフサイクルの流れ図
- 主要イベント: Init → Load → Render → Unload
- ポストバックの仕組み（ViewStateによる状態保持）
- IsPostBackプロパティの重要性
- VB.NETでのイベントハンドラー記述例（Handles句）

### 5. 環境準備 - 開発環境セットアップ (5枚目)
- Visual Studioのインストールと設定
- ASP.NET WebFormsプロジェクトテンプレート選択
- プロジェクト構造の説明（aspx、aspx.vb、web.config）
- IIS Expressでのローカル実行
- NuGetパッケージ管理の基本

### 6. 基本構成 - WebFormsページ構造 (6枚目)
- aspxファイル: マークアップ（HTML + サーバーコントロール）
- aspx.vbファイル: コードビハインド（VB.NETロジック）
- Page指示子とインポート文
- マスターページによるレイアウト共通化
- フォルダー構成のベストプラクティス

### 7. 動作原理 - サーバーコントロール (7枚目)
- サーバーコントロールの種類（標準、検証、データ、ナビゲーション）
- runat="server"属性の意味
- HTMLコントロールとの違い
- コントロールツリーとレンダリング
- よく使うコントロール: TextBox、Button、GridView、DropDownList

### 8. コア機能 - イベントハンドリング (8枚目)
- VB.NETでのイベント処理（Handles句の活用）
- Button_Clickイベントの実装例
- ページレベルイベント vs コントロールイベント
- AutoEventWireup属性の理解
- 非同期ポストバック（UpdatePanel）の概要

### 9. 応用機能 - 状態管理テクニック (9枚目)
- ViewState: ページレベルの状態保持
- Session: ユーザーセッション管理
- Application: アプリケーション全体での共有
- Cookie: クライアント側での永続化
- QueryString: URLパラメーターによるデータ受け渡し

### 10. データ取扱 - データバインディング (10枚目)
- データソースコントロール（SqlDataSource、ObjectDataSource）
- GridViewでのCRUD操作実装
- データバインディング式: <%# Eval() %> と <%# Bind() %>
- FormViewとDetailsViewの活用
- LINQ to SQLとEntity Frameworkの統合

### 11. 実践応用 - 業務アプリケーション例 (11枚目)
- ユーザー認証・認可（Forms認証）
- マスター詳細画面の実装パターン
- 入力検証コントロールの活用
- ファイルアップロード処理
- レポート出力（PDF、Excel）の実装アプローチ

### 12. 学習指針 - 次のステップ (12枚目)
- 習得ステップ: 基本→CRUD→認証→Ajax
- 推奨学習リソース（書籍、オンラインコース）
- モダンな選択肢: Blazor、ASP.NET Core
- レガシーシステムの保守・移行戦略
- コミュニティとサポート情報

## ダウンロード
- **PDFファイル**: https://fcircle-biz.github.io/tech_docs/slide/asp-net-vb-webforms/aspnet-webforms-vb-slide.pdf
- **SVGソースファイル**: https://github.com/fcircle-biz/tech_docs/tree/main/docs/slide/asp-net-vb-webforms

## 視覚的特徴
- **大きなフォントサイズ**: 16px-48pxで優れた視認性
- **アイコン活用**: .NETロゴ、Visual Studioアイコン、コントロールアイコン
- **2列レイアウト**: 効率的な情報配置（コード例と説明の並列表示）
- **色分けシステム**: Microsoft Fluent Designベース（紫系統の.NETカラー）

## 学習目標
このスライド教材を完了すると、以下のスキルを身につけることができます：
- ASP.NET WebFormsの基本概念とアーキテクチャの理解
- VB.NETによるコードビハインドの実装能力
- サーバーコントロールを活用した効率的なUI構築
- イベント駆動型プログラミングによるユーザー操作の処理
- 各種状態管理手法を使い分けた堅牢なアプリケーション設計
- データバインディングによる動的なデータ表示の実装

## 関連教材
- **詳細ガイド**: [ASP.NET WebForms完全ガイド（準備中）]
- **実習チュートリアル**: [WebForms CRUD操作チュートリアル（準備中）]
- **クイックリファレンス**: [WebFormsコントロール一覧チートシート（準備中）]
- **移行ガイド**: [WebFormsからBlazorへの移行ガイド（準備中）]

## 次のステップ
このスライド完了後は、以下の学習に進むことをお勧めします：
- [ASP.NET Core MVCスライド教材]（モダンなMVCパターンの学習）
- [Blazorスライド教材]（コンポーネントベースのWeb開発）
- [Entity Framework実践チュートリアル]（データアクセス層の実装）
- [Azure App Service展開ガイド]（クラウドへのデプロイメント）

## 補足情報
### VB.NET特有の記法
- **イベントハンドラー**: `Handles Button1.Click`構文の活用
- **WithEventsキーワード**: 動的なイベント処理
- **My名前空間**: VB.NET固有の便利な機能群
- **XMLリテラル**: LINQ to XMLとの統合

### WebForms特有の考慮事項
- **ViewStateサイズ**: パフォーマンスへの影響と最適化
- **ポストバック頻度**: ユーザビリティとサーバー負荷のバランス
- **クロスページポスティング**: 複数ページ間でのデータ受け渡し
- **カスタムコントロール**: 再利用可能なコンポーネント作成

### 実践的なTips
- デバッグ時のトレース出力活用
- web.configによる環境別設定管理
- グローバルエラーハンドリングの実装
- パフォーマンスプロファイリングツールの使用