# Claude開発ガイドライン

このドキュメントは、技術ドキュメントリポジトリの開発・保守における指針とベストプラクティスを記載しています。

## 📖 学習ガイドラインHTMLレイアウト仕様

### 基本構造

学習ガイドラインのHTMLファイルは以下の統一された構造を使用します：

```html
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>[技術名]学習教材 第X章 - [章タイトル]</title>
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts - Noto Sans JP -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;700&display=swap" rel="stylesheet">
    <style>
        /* カスタムCSS */
    </style>
</head>
<body>
    <!-- ナビゲーションバー -->
    <!-- サイドバー -->
    <!-- メインコンテンツ -->
    <!-- Bootstrap JavaScript -->
</body>
</html>
```

### カラーテーマ体系

技術分野ごとに統一されたカラーテーマを使用：

| 技術分野 | 主要色 | セカンダリ色 | 背景色 | 用途 |
|---------|--------|-------------|--------|------|
| **データベース系** | | | | |
| - PL/SQL | `#1565c0` | `#1976d2` | `#e3f2fd` | Oracle関連 |
| - Oracle | `#1976d2` | `#42a5f5` | `#e1f5fe` | Oracle関連 |
| **Java生態系** | | | | |
| - Java | `#f57c00` | `#ff9800` | `#fff3e0` | Java関連 |
| - Spring | `#4caf50` | `#66bb6a` | `#e8f5e8` | Spring関連 |
| - JSP/Servlet | `#795548` | `#8d6e63` | `#efebe9` | Web関連 |
| **フロントエンド** | | | | |
| - JavaScript | `#ffc107` | `#ffca28` | `#fffde7` | JavaScript関連 |

### CSSクラス定義

#### 必須CSSクラス
```css
/* ベースレイアウト */
body {
    font-family: 'Noto Sans JP', sans-serif;
    padding-top: 56px;
}

/* ナビゲーション */
.navbar {
    background-color: [技術固有色];
}

/* サイドバー */
.sidebar {
    position: sticky;
    top: 70px;
    height: calc(100vh - 70px);
    overflow-y: auto;
}

/* タイトル */
.chapter-title {
    color: [技術固有色];
    margin-top: 1.5rem;
    margin-bottom: 1rem;
    border-bottom: 2px solid [技術固有色];
    padding-bottom: 0.5rem;
}

.section-title {
    color: [セカンダリ色];
    margin-top: 1.2rem;
    margin-bottom: 0.8rem;
}

/* コンテンツボックス */
.quiz-container {
    background-color: [背景色];
    border-radius: 8px;
    padding: 1.5rem;
    margin: 1.5rem 0;
    border-left: 4px solid [技術固有色];
}

.exercise-container {
    background-color: #f3e5f5;
    border-radius: 8px;
    padding: 1.5rem;
    margin: 1.5rem 0;
    border-left: 4px solid #9c27b0;
}

.highlight {
    background-color: #ffecb3;
    border-radius: 8px;
    padding: 1rem;
    margin: 1rem 0;
    border-left: 4px solid #ffc107;
}

.warning {
    background-color: #ffebee;
    border-radius: 8px;
    padding: 1rem;
    margin: 1rem 0;
    border-left: 4px solid #f44336;
}

/* ナビゲーション */
.nav-link.active {
    background-color: [技術固有色] !important;
    color: white !important;
}
```

### HTML構造詳細

#### 1. ナビゲーションバー
```html
<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="README.md">[技術名]学習ガイド</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>
```

#### 2. サイドバーナビゲーション
```html
<nav class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
    <div class="position-sticky pt-3">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link [active]" href="[ファイル名].html">第X章: [章タイトル]</a>
            </li>
            <!-- 全章のリンク -->
        </ul>
    </div>
</nav>
```

#### 3. メインコンテンツ構造
```html
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <!-- 章ヘッダー -->
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">第X章: [章タイトル]</h1>
    </div>

    <div id="chapterX">
        <!-- 章タイトル -->
        <h2 class="chapter-title">[メインタイトル]</h2>
        
        <!-- 学習目標 -->
        <div class="highlight">
            <h5>この章で学ぶこと</h5>
            <ul>
                <li>[学習項目1]</li>
                <li>[学習項目2]</li>
            </ul>
        </div>

        <!-- セクション -->
        <h3 class="section-title">X.1 [セクションタイトル]</h3>
        <p>[説明文]</p>

        <!-- 実習 -->
        <div class="exercise-container">
            <h5>実習 X-1: [実習タイトル]</h5>
            <code>[コード例]</code>
        </div>

        <!-- 理解度確認 -->
        <div class="quiz-container">
            <h5>理解度確認クイズ</h5>
            <ol>
                <li>[問題1]</li>
                <li>[問題2]</li>
            </ol>
        </div>

        <!-- ナビゲーション -->
        <div class="d-flex justify-content-between mt-4">
            <a href="[前章]" class="btn btn-secondary">← 前の章</a>
            <a href="[次章]" class="btn btn-primary">次の章 →</a>
        </div>
    </div>
</main>
```

### ファイル命名規則

- **README.md**: カリキュラム概要ファイル
- **[技術名]-learning-material-[章番号].html**: 各章のHTMLファイル
  - 例: `struts1-learning-material-1.html`
  - 例: `oracle-learning-material-5.html`

### コンテンツ要素ガイドライン

#### 必須要素
1. **学習目標** (`.highlight`): 各章の冒頭に配置
2. **セクション** (`.section-title`): 章内の主要トピック
3. **実習** (`.exercise-container`): 実行可能なコード例
4. **理解度確認** (`.quiz-container`): 章末の確認問題
5. **章間ナビゲーション**: 前章・次章へのリンク

#### 推奨要素
- **警告・注意** (`.warning`): 重要な注意事項
- **表組み** (`.table-responsive`): 比較表や仕様表
- **コードブロック** (`code`): SQL文やプログラムコード

### レスポンシブ対応

- **Bootstrap 5グリッドシステム**を使用
- **サイドバー**: `col-md-3 col-lg-2`
- **メインコンテンツ**: `col-md-9 col-lg-10`
- **モバイル対応**: サイドバーの折りたたみ機能

### アクセシビリティ

- **日本語フォント**: Noto Sans JP使用
- **意味的HTML**: 適切なHTMLタグの使用
- **色のコントラスト**: WCAG準拠の色合い
- **キーボードナビゲーション**: フォーカス可能な要素

---

## 🎨 デザイン原則

### 統一性
- 同一技術分野内での色の統一
- 一貫したレイアウト構造
- 統一されたフォントとサイズ

### 可読性
- 十分な行間とマージン
- 明確な階層構造
- 適切なコントラスト

### 実用性
- 実行可能なコード例
- 段階的な学習進行
- 明確な学習目標

---

このガイドラインに従って新しい学習教材を作成することで、統一性と品質を保った技術ドキュメントを提供できます。