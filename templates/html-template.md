# HTMLテンプレート構造

## 基本HTML構造

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
    
    <!-- Highlight.js CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/atom-one-dark.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"></script>
    
    <!-- カスタムCSS（templates/css-styles.mdを参照） -->
    <style>
        /* CSSスタイルはtemplates/css-styles.mdに定義されています */
    </style>
</head>
<body>
    <!-- ナビゲーションバー -->
    <!-- サイドバー -->
    <!-- メインコンテンツ -->
    
    <!-- Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Highlight.js 初期化 -->
    <script>hljs.highlightAll();</script>
</body>
</html>
```

## メインコンテンツ構造

```html
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <!-- 章ヘッダー -->
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">第X章: [章タイトル]</h1>
    </div>

    <div id="chapterX">
        <!-- 章タイトル -->
        <h2 class="chapter-title">[メインタイトル]</h2>
        
        <!-- 学習目標（必須） -->
        <div class="highlight">
            <h5>この章で学ぶこと</h5>
            <ul>
                <li>[学習項目1]</li>
                <li>[学習項目2]</li>
            </ul>
        </div>

        <!-- セクション構成 -->
        <h3 class="section-title">X.1 [セクションタイトル]</h3>
        <p>[説明文]</p>

        <!-- 実習（必須） -->
        <div class="exercise-container">
            <h5>実習 X-1: [実習タイトル]</h5>
            <p>[実習の目的・概要]</p>
            <h6>手順</h6>
            <ol>
                <li>[手順1]</li>
                <li>[手順2]</li>
            </ol>
            <h6>実行例</h6>
            <pre class="code-block"><code class="language-[言語名]">[コード例]</code></pre>
            <h6>期待される結果</h6>
            <p>[結果の説明]</p>
        </div>

        <!-- 理解度確認（必須） -->
        <div class="quiz-container">
            <h5>理解度確認クイズ</h5>
            <ol>
                <li>[問題1]</li>
                <li>[問題2]</li>
            </ol>
        </div>

        <!-- 章間ナビゲーション（必須） -->
        <div class="d-flex justify-content-between mt-4">
            <a href="[前章ファイル名].html" class="btn btn-secondary">← 前の章</a>
            <a href="[次章ファイル名].html" class="btn btn-primary">次の章 →</a>
        </div>
    </div>
</main>
```

## コードハイライト使用例

### 基本的な使用方法
```html
<pre class="code-block"><code class="language-javascript">
function hello() {
    console.log('Hello World!');
}
</code></pre>
```

### 対応言語例
- `language-javascript` - JavaScript
- `language-python` - Python
- `language-java` - Java
- `language-csharp` - C#
- `language-vbnet` - VB.NET
- `language-sql` - SQL
- `language-html` - HTML
- `language-css` - CSS
- `language-json` - JSON
- `language-xml` - XML
- `language-bash` - Bash/Shell

### テーマの変更
デフォルトはAtom One Dark（黒背景）テーマ、その他も利用可能：
```html
<!-- その他のテーマ例 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/vs.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/github.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/stackoverflow-light.min.css">
```