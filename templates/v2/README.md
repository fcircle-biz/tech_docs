# テンプレート v2 (Tailwind CSS版)

## 概要

技術学習教材・チュートリアル用のHTMLテンプレートです。Tailwind CSS を使用したモダンなデザインで、レスポンシブ対応しています。

**主な機能:**
- レスポンシブデザイン（PC・タブレット・スマートフォン対応）
- サイドバー開閉機能（PC: トグルボタン、モバイル: ハンバーガーメニュー）
- デバイス別最適化UI（タブレット・スマートフォンは初期状態でサイドバー閉）
- 講義用描画ツール（PC環境のみ）
- 共通JavaScript機能（各技術フォルダ内で直接管理）

## ディレクトリ構成

```
templates/v2/
├── README.md                                # このファイル
├── html/                                    # コピー用HTMLテンプレートとJavaScript
│   ├── learning-material-template.html      # 学習教材用テンプレート
│   ├── tutorial-template.html               # チュートリアル用テンプレート
│   ├── main.js                              # 共通機能（サイドバー、描画ツールバー生成等）
│   └── drawing-tool.js                      # 描画ツール機能
├── reference/                               # 参照用ドキュメント
│   ├── color-themes.md                      # 技術別カラーテーマ一覧
│   ├── css-styles.md                        # CSSスタイルガイド
│   └── mermaid-patterns.md                  # Mermaid図パターン集
└── snippets/                                # 部品スニペット
    └── components.html                      # よく使うコンポーネント集（プレビュー可）
```

## 使い方

### 1. テンプレートをコピー

目的に応じたテンプレートをコピーしてください：

- **学習教材（guide）を作成する場合**
  ```bash
  cp templates/v2/html/learning-material-template.html docs/guide/[分類]/[技術名]/[技術名]-learning-material-01.html
  ```

- **チュートリアル（tutorial）を作成する場合**
  ```bash
  cp templates/v2/html/tutorial-template.html docs/tutorial/[分類]/[技術名]/[技術名]-tutorial-01.html
  ```

### 2. TODOコメントを編集

テンプレート内の `<!-- TODO: ... -->` コメントを検索し、該当箇所を編集してください。

主な編集箇所：
- **技術名・タイトル**: `[技術名]`、`[章タイトル]` 等
- **カラーテーマ**: `tailwind.config` 内の `primary` カラー
- **アイコン**: `fab fa-python` → 適切なFont Awesomeアイコン
- **章リスト/ステップリスト**: サイドバーのナビゲーション
- **コンテンツ**: 学習目標、説明文、コード例等

### 3. カラーテーマを変更

技術に応じて `tailwind.config` の `primary` カラーを変更します。
詳細は `reference/color-themes.md` を参照してください。

#### よく使うカラーテーマ

| 技術 | メインカラー | アイコン |
|------|-------------|---------|
| Python | Blue (`#3b82f6`) | `fab fa-python` |
| Java | Orange (`#f97316`) | `fab fa-java` |
| Spring | Emerald (`#10b981`) | `fas fa-leaf` |
| React | Cyan (`#06b6d4`) | `fab fa-react` |
| .NET/C# | Violet (`#8b5cf6`) | `fab fa-microsoft` |

### 4. 共通JavaScriptの配置

テンプレートは共通JavaScriptファイル（`main.js` と `drawing-tool.js`）を使用します。

**重要：依存を避けるため、各技術フォルダ内に直接JSファイルをコピーしてください。**

#### 手順

1. **JSファイルをコピー**
   ```bash
   # Javaガイドを作成する場合の例
   cp templates/v2/html/main.js docs/guide/programming-languages/java-ecosystem/java/
   cp templates/v2/html/drawing-tool.js docs/guide/programming-languages/java-ecosystem/java/

   # Pythonチュートリアルを作成する場合の例
   cp templates/v2/html/main.js docs/tutorial/programming-languages/python-ecosystem/django/
   cp templates/v2/html/drawing-tool.js docs/tutorial/programming-languages/python-ecosystem/django/
   ```

2. **HTMLファイルでのパス設定**

   テンプレート内のスクリプト参照は以下のようになっています：
   ```html
   <!-- 共通JavaScript -->
   <script src="main.js"></script>

   <!-- 描画ツール -->
   <script src="drawing-tool.js"></script>
   ```

   配置場所によって相対パスを調整してください：
   - **ルート階層** (`docs/guide/.../java/*.html`)
     - `main.js` のまま
   - **サブディレクトリ** (`docs/guide/.../java/v1/*.html`)
     - `../main.js` に変更

#### main.jsの機能

`main.js` には以下の共通機能が含まれています：
- PC環境判定（1024px以上をPC環境と判定）
- サイドバー開閉制御
- 描画ツールバー生成（PC環境のみ）
- スクロールトップボタン制御
- モバイルメニュー制御
- コードコピー機能
- Highlight.js / Mermaid.js 初期化

#### drawing-tool.jsの機能

`drawing-tool.js` には以下の描画ツール機能が含まれています：
- ペン/消しゴムツール
- 色・線幅選択
- 元に戻す/全消去
- キーボードショートカット (D, P, E, C, Ctrl+Z)

## テンプレートの種類

### 学習教材テンプレート (learning-material-template.html)

10章構成の学習教材向け。以下の機能を含みます：

**レイアウト:**
- リッチなヘッダーデザイン
- サイドバー（PC環境: リサイズ可能・トグル可能、モバイル: スライドイン/アウト）
- サイドバートグルボタン（PC環境のみ、左上固定配置）
- 進捗インジケーター
- 章リストナビゲーション

**コンテンツ:**
- 学習目標カード
- 実習カード
- 理解度確認クイズ
- 章間ナビゲーション

**インタラクティブ機能:**
- 講義用描画ツール（PC環境のみ、右側に配置）
- サイドバー開閉状態保存（ローカルストレージ）
- コードコピー機能

### チュートリアルテンプレート (tutorial-template.html)

ハンズオン形式のチュートリアル向け。以下の機能を含みます：

**レイアウト:**
- プロジェクト概要カード
- サイドバー（PC環境: トグル可能、モバイル: スライドイン/アウト）
- サイドバートグルボタン（PC環境のみ、左上固定配置）
- ステップリストナビゲーション

**コンテンツ:**
- 実装手順カード（番号付き）
- 動作確認セクション
- トラブルシューティング（折りたたみ）
- ファイル構成表示

**インタラクティブ機能:**
- ステップ完了チェックリスト（ローカルストレージ保存）
- サイドバー開閉状態保存（ローカルストレージ）
- コードコピー機能

## スニペットの使い方

`snippets/components.html` をブラウザで開くと、各コンポーネントのプレビューが確認できます。
必要な部分のHTMLをコピーして使用してください。

## ファイル命名規則

- 学習教材: `[tech-name]-learning-material-[章番号].html`
  - 例: `python-learning-material-01.html`
- チュートリアル: `[tech-name]-tutorial-[ステップ番号].html`
  - 例: `django-tutorial-01.html`

## デバイス別動作仕様

### PC環境（1024px以上）
- **サイドバー**: 初期状態は開いた状態（前回の状態をローカルストレージから復元）
- **サイドバートグルボタン**: 左上に表示、クリックで開閉
- **サイドバーリサイズ**: マウスドラッグでサイドバー幅を調整可能（240px-480px）
- **描画ツールバー**: 右側に表示（折りたたみ可能）
- **スクロールトップボタン**: 表示

### タブレット・スマートフォン（1024px未満）
- **サイドバー**: 初期状態は閉じた状態
- **サイドバー開閉**: ヘッダーのハンバーガーメニューボタンで制御
- **オーバーレイ**: サイドバー表示時に背景にオーバーレイ表示、クリックで閉じる
- **サイドバートグルボタン**: 非表示
- **描画ツールバー**: 非表示
- **スクロールトップボタン**: 非表示

### ローカルストレージの使用

以下の設定がローカルストレージに保存されます：
- `sidebarOpen`: サイドバーの開閉状態（PC環境のみ）
- `sidebarWidth`: サイドバーの幅（PC環境のみ）
- チュートリアルのチェックリスト完了状態（該当ページのみ）

## 必要な外部リソース

テンプレートは以下のCDNリソースを使用しています（インターネット接続が必要）：

- Tailwind CSS
- Google Fonts (Noto Sans JP)
- Highlight.js
- Mermaid.js
- Font Awesome

## 参考ドキュメント

- `reference/color-themes.md` - 技術別カラーテーマの詳細
- `reference/css-styles.md` - Tailwind CSSスタイルガイド
- `reference/mermaid-patterns.md` - Mermaid図のパターン集

## よくある質問（FAQ）

### Q: サイドバーが表示されない・動作しない
**A:** 以下を確認してください：
1. `main.js` のパスが正しく設定されているか（配置場所に応じて相対パスを調整）
2. `main.js` と `drawing-tool.js` が正しくコピーされているか
3. ブラウザの開発者ツールでJavaScriptエラーが出ていないか
4. `id="sidebar"` と `id="sidebar-toggle-btn"` が正しく設定されているか

### Q: 描画ツールバーが表示されない
**A:** 描画ツールバーはPC環境（1024px以上）でのみ表示されます。タブレット・スマートフォンでは意図的に非表示になっています。

### Q: サイドバーの初期状態を変更したい
**A:** 各技術フォルダ内の `main.js` の183-201行目で初期状態を制御しています。カスタマイズする場合はこの部分を編集してください。

### Q: 技術アイコンが表示されない
**A:** Font Awesome CDNが正しく読み込まれているか確認してください。また、使用するアイコンクラス（例: `fab fa-python`）が正しいか確認してください。

## バージョン履歴

### v2.2.0 (2025-11-27)
- 共通JavaScriptファイルの管理方法を変更
- `templates/v2/html/` フォルダにコピー用の共通JavaScriptを配置
- 各技術フォルダ内に直接JSファイルをコピーする方式に変更（依存を避けるため）
- commonフォルダを廃止し、HTMLテンプレートと同じhtmlフォルダに配置
- テンプレートのスクリプト参照パスを更新
- README.md の手順を更新

### v2.1.0 (2025-01-27)
- サイドバー開閉機能を追加
- タブレット・スマートフォンでサイドバーの初期状態を閉じた状態に変更
- PC環境用サイドバートグルボタンを追加
- 描画ツールバーをPC環境限定に変更
- 共通JavaScript機能を統合

### v2.0.0
- 初版リリース
- Tailwind CSS ベースのテンプレート
- 学習教材・チュートリアルテンプレート提供
