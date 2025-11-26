# テンプレート v2 (Tailwind CSS版)

## 概要

技術学習教材・チュートリアル用のHTMLテンプレートです。Tailwind CSS を使用したモダンなデザインで、レスポンシブ対応しています。

## ディレクトリ構成

```
templates/v2/
├── README.md                                # このファイル
├── html/                                    # コピー用HTMLテンプレート
│   ├── learning-material-template.html      # 学習教材用テンプレート
│   └── tutorial-template.html               # チュートリアル用テンプレート
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

### 4. 描画ツールのパス調整

講義用描画ツールを使用する場合、配置場所に応じて `drawing-tool.js` のパスを調整してください：

```html
<!-- 配置場所に応じてパスを変更 -->
<!-- docs/guide/category/tech/ の場合 -->
<script src="../../../../common/drawing-tool.js"></script>
```

## テンプレートの種類

### 学習教材テンプレート (learning-material-template.html)

10章構成の学習教材向け。以下の機能を含みます：

- リッチなヘッダーデザイン
- サイドバー（リサイズ可能）
- 進捗インジケーター
- 章リストナビゲーション
- 学習目標カード
- 実習カード
- 理解度確認クイズ
- 章間ナビゲーション
- 講義用描画ツール

### チュートリアルテンプレート (tutorial-template.html)

ハンズオン形式のチュートリアル向け。以下の機能を含みます：

- プロジェクト概要カード
- ステップリストナビゲーション
- 実装手順カード（番号付き）
- 動作確認セクション
- トラブルシューティング（折りたたみ）
- ステップ完了チェックリスト（ローカルストレージ保存）
- ファイル構成表示

## スニペットの使い方

`snippets/components.html` をブラウザで開くと、各コンポーネントのプレビューが確認できます。
必要な部分のHTMLをコピーして使用してください。

## ファイル命名規則

- 学習教材: `[tech-name]-learning-material-[章番号].html`
  - 例: `python-learning-material-01.html`
- チュートリアル: `[tech-name]-tutorial-[ステップ番号].html`
  - 例: `django-tutorial-01.html`

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
