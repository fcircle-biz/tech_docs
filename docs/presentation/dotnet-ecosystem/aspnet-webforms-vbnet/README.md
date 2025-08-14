# ASP.NET WebForms VB.NET プレゼンテーション教材

この教材では、ASP.NET WebFormsとVB.NETを使用したWebアプリケーション開発の重要概念を視覚的なプレゼンテーション形式で効率的に学習できます。

## 教材形式
- **ファイル形式**: PDF（SVGから高品質変換）
- **推奨スライド数**: 15枚
- **学習時間**: 30-45分

## 前提条件
### 必要な環境
- PDFビューアー（Adobe Acrobat Reader推奨）
- Visual Studio 2019以降（Community Edition可）
- .NET Framework 4.7.2以降
- IIS Express（Visual Studioに含まれる）

### 参考リソース
- [Microsoft ASP.NET WebForms ドキュメント](https://docs.microsoft.com/ja-jp/aspnet/web-forms/)
- [VB.NET 言語リファレンス](https://docs.microsoft.com/ja-jp/dotnet/visual-basic/)
- [IIS Express ドキュメント](https://docs.microsoft.com/ja-jp/iis/extensions/using-iis-express/)

### 前提知識
- **必須**: VB.NETの基本構文、HTMLとCSSの基礎知識
- **推奨**: .NET Frameworkの概要理解、データベースの基本概念

## プレゼンテーション構成
### 1. タイトルスライド
- ASP.NET WebFormsロゴとVB.NETアイコン表示
- Webアプリケーション開発の学習目標
- 初級〜中級レベルの明示

### 2. 目次スライド (2枚目)
- 全体の学習フロー（基礎から実装まで）
- 各セクションの学習時間目安（3-5分/セクション）
- 進捗インジケーター付き

### 3-14. コンテンツスライド (3-14枚目)
1. **ASP.NET WebFormsの概要**: サーバーサイドWebフレームワークの基本概念とアーキテクチャ
2. **プロジェクト構造の理解**: Web.config、Global.asax、aspxファイルの役割と構成
3. **Webフォームコントロール基礎**: Label、TextBox、Button等の基本コントロールの使い方
4. **イベント駆動プログラミング**: Page_Load、Button_Clickイベントの実装パターン
5. **データバインディング**: GridView、Repeater、DataListによるデータ表示
6. **入力検証の実装**: RequiredFieldValidator、RegularExpressionValidatorの活用
7. **状態管理テクニック**: ViewState、Session、Applicationオブジェクトの使い分け
8. **マスターページの活用**: 統一レイアウトの実装とコンテンツページの作成
9. **ユーザーコントロール**: 再利用可能なカスタムコントロールの開発
10. **ADO.NETデータアクセス**: SqlConnection、SqlCommand、DataSetの使用方法
11. **エラー処理とデバッグ**: Try-Catch、Page_Error、Global.asaxでのエラー管理
12. **デプロイメント戦略**: IISへの発行、Web.config変換、接続文字列管理

### 15. まとめスライド (最終枚)
- ASP.NET WebFormsの主要概念の振り返り
- 実践的なWebアプリケーション開発への次のステップ
- ASP.NET Core移行への道筋

## ダウンロード
- **PDFファイル**: https://fcircle-biz.github.io/tech_docs/presentation/aspnet-webforms-vbnet/aspnet-webforms-vbnet-presentation.pdf
- **SVGソースファイル**: https://github.com/fcircle-biz/tech_docs/tree/main/docs/presentation/aspnet-webforms-vbnet/svg/

## 推奨学習方法
1. **通読モード** (15-20分): プレゼンテーション全体を通して基本概念を把握
2. **詳細学習モード** (30-45分): 各スライドのコード例を実際に試しながら理解
3. **復習モード** (10-15分): 重要なコントロールとイベント処理の再確認

## 視覚的特徴
- **大きなフォントサイズ**: 18px-48pxで優れた視認性を確保
- **ASP.NETアイコン活用**: フレームワーク固有のビジュアル要素で理解促進
- **2列レイアウト**: コードと説明の効率的な配置
- **色分けシステム**: Microsoft Visual Studioのテーマカラーベース

## 学習目標
このプレゼンテーション教材を完了すると、以下のスキルを身につけることができます：
- ASP.NET WebFormsの基本アーキテクチャとライフサイクルの理解
- VB.NETを使用したサーバーサイドイベント処理の実装
- データバインディングと検証コントロールの効果的な活用
- セッション管理とViewStateによる状態保持の実装
- ADO.NETを使用したデータベース接続とCRUD操作
- マスターページとユーザーコントロールによる効率的な開発

## コード例（VB.NET）

### 基本的なイベントハンドラ
```vb
Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    Label1.Text = "こんにちは、" & TextBox1.Text & "さん！"
    Session("UserName") = TextBox1.Text
End Sub
```

### データバインディングの例
```vb
Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    If Not IsPostBack Then
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("MyDB").ConnectionString
        Using conn As New SqlConnection(connectionString)
            Dim cmd As New SqlCommand("SELECT * FROM Products", conn)
            conn.Open()
            GridView1.DataSource = cmd.ExecuteReader()
            GridView1.DataBind()
        End Using
    End If
End Sub
```

### 入力検証の実装
```vb
Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs)
    Dim email As String = args.Value
    args.IsValid = Regex.IsMatch(email, "^[\w\.-]+@[\w\.-]+\.\w+$")
End Sub
```

### Session状態の管理
```vb
' セッションへの保存
Protected Sub SaveToSession()
    Session("CartItems") = cartItemsList
    Session.Timeout = 20 ' 20分でタイムアウト
End Sub

' セッションからの取得
Protected Sub LoadFromSession()
    If Session("CartItems") IsNot Nothing Then
        cartItemsList = CType(Session("CartItems"), List(Of CartItem))
    End If
End Sub
```

## 関連教材
- **詳細ガイド**: [ASP.NET WebForms完全ガイド](/docs/guide/dotnet/aspnet-webforms/)
- **実習チュートリアル**: [ユーザー管理システム構築](/docs/tutorial/dotnet/user-management/)
- **クイックリファレンス**: [WebFormsコントロール一覧](/docs/cheatsheet/dotnet/webforms-controls/)

## 次のステップ
このプレゼンテーション完了後は、以下の学習に進むことをお勧めします：
- [ASP.NET Core MVCへの移行ガイド](/docs/presentation/aspnet-core-mvc/)
- [Entity Frameworkによるデータアクセス](/docs/tutorial/dotnet/entity-framework/)
- [Azure App Serviceへのデプロイメント](/docs/guide/azure/app-service/)

## トラブルシューティングのヒント
- **ViewStateが大きすぎる場合**: EnableViewState="false"で不要なコントロールを無効化
- **セッション喪失の問題**: InProcからStateServerまたはSQLServerモードへの変更を検討
- **パフォーマンス改善**: OutputCacheディレクティブの活用とバンドル機能の利用

## サンプルプロジェクト構造
```
WebApplication/
├── Default.aspx          # ホームページ
├── Default.aspx.vb       # コードビハインド
├── Site.Master           # マスターページ
├── Site.Master.vb        # マスターページのコード
├── Web.config            # 設定ファイル
├── Global.asax           # アプリケーションイベント
├── App_Code/            # 共有コードファイル
│   └── DataAccess.vb    # データアクセス層
├── App_Data/            # データファイル
│   └── Database.mdf     # SQL Server Express DB
├── Controls/            # ユーザーコントロール
│   ├── Header.ascx      # ヘッダーコントロール
│   └── Footer.ascx      # フッターコントロール
├── Scripts/             # JavaScriptファイル
├── Styles/              # CSSファイル
└── bin/                 # コンパイル済みアセンブリ
```

## 学習のポイント
- **ポストバックの理解**: IsPostBackプロパティを活用した効率的な処理
- **ライフサイクルの把握**: Init → Load → イベント → PreRender → Renderの流れ
- **コントロールの選択**: 用途に応じた適切なサーバーコントロールの選定
- **パフォーマンス最適化**: ViewStateの最小化とキャッシュの活用

## 注意事項
- ASP.NET WebFormsは成熟した技術ですが、新規プロジェクトではASP.NET Coreの採用を推奨
- レガシーシステムの保守・改修には依然として重要な技術
- セキュリティ更新とパッチの適用を定期的に実施することが重要