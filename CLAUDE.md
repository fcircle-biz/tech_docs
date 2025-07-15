# Claude開発ガイドライン

このドキュメントは、技術ドキュメントリポジトリの開発・保守における指針とベストプラクティスを記載しています。

## 📋 カリキュラム作成手順

新しい技術学習ガイドラインを作成する際の標準プロセスです。

### 1. 事前準備

#### 1.1 技術分野の決定
- 対象技術の選定（Java、Oracle、SAS等）
- 学習者のレベル設定（入門、中級、上級）
- 前提知識とスキルレベルの明確化
- 他の学習ガイドとの関連性の整理

#### 1.2 学習目標の設定
- 最終的な到達目標の明確化（具体的なスキル・知識）
- 各章での段階的な習得目標の定義
- 実践的なプロジェクト・課題の設計
- 評価基準の設定

#### 1.3 カリキュラム構成の設計
- 推奨章数：6-10章
- 各章のテーマとボリューム設定
- 学習進行の論理的な順序付け
- 実習・演習の配置計画

### 2. README.md 作成

#### 2.1 README.md テンプレート
```markdown
# [技術名] 学習ガイドライン

このガイドラインでは、[技術名]の基礎を入門者向けに段階的に学習するためのカリキュラムを提供しています。

## 前提条件

### 必要な環境
- [環境要件1]
- [環境要件2]

### 参考リソース
- [公式ドキュメント等のリンク]

### 前提知識
- **必須**: [必要な前提知識]
- **推奨**: [推奨される前提知識]

## 学習コンテンツ

### [1. 第1章タイトル](GitHub Pages URL)
[章の概要説明]

### [2. 第2章タイトル](GitHub Pages URL)
[章の概要説明]

[以下、全章を記載]

## 学習の進め方

1. **[ステップ1の説明]**
2. **[ステップ2の説明]**
[以下、具体的な学習手順]

## 推奨学習期間

- **基礎習得コース** (1-X章): X-X週間
- **実践活用コース** (X-X章): X-X週間

## 関連リソース

- [チートシートリンク]
- [関連ガイドラインリンク]

## 学習目標

このガイドを完了すると、以下のスキルを身につけることができます：

- [具体的なスキル1]
- [具体的なスキル2]
[以下、全ての学習目標]

## 次のステップ

このガイドライン完了後は、以下の学習に進むことをお勧めします：

- [関連する上級ガイドラインへのリンク]
```

#### 2.2 リンク設定ルール
- **GitHub Pages形式**: `https://fcircle-biz.github.io/tech_docs/guide/[分野]/[技術]/[ファイル名].html`
- **ディレクトリ構造**: `/docs/guide/[分野]/[技術]/`
- **ファイル名**: `[技術名]-learning-material-[章番号].html`

### 3. HTML学習教材作成

#### 3.1 ファイル命名規則
- パターン: `[技術名]-learning-material-[章番号].html`
- 例: `sas-learning-material-1.html`、`oracle-learning-material-3.html`
- 小文字とハイフンを使用、章番号は1から開始

#### 3.2 HTMLテンプレート構造

##### 基本HTML構造
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
        /* カスタムCSS（技術分野別カラーテーマ適用） */
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

#### 3.3 技術分野別カラーテーマ

| 技術分野 | 主要色 | セカンダリ色 | 背景色 | 用途 |
|---------|--------|-------------|--------|------|
| **データベース系** | | | | |
| - Oracle | `#1976d2` | `#42a5f5` | `#e1f5fe` | Oracle関連 |
| - PL/SQL | `#1565c0` | `#1976d2` | `#e3f2fd` | PL/SQL関連 |
| **データ分析系** | | | | |
| - SAS | `#0066cc` | `#3399ff` | `#e6f2ff` | SAS関連 |
| **Java生態系** | | | | |
| - Java | `#f57c00` | `#ff9800` | `#fff3e0` | Java関連 |
| - Spring | `#4caf50` | `#66bb6a` | `#e8f5e8` | Spring関連 |
| **フロントエンド** | | | | |
| - JavaScript | `#ffc107` | `#ffca28` | `#fffde7` | JavaScript関連 |

#### 3.4 必須CSSクラス定義

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

#### 3.5 メインコンテンツ構造

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
            <pre><code>[コード例]</code></pre>
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

### 4. コンテンツ作成ガイドライン

#### 4.1 必須要素
1. **学習目標** (`.highlight`): 各章の冒頭に配置
2. **セクション分割** (`.section-title`): 主要トピックごと
3. **実習課題** (`.exercise-container`): 実行可能なコード例
4. **理解度確認** (`.quiz-container`): 章末の確認問題
5. **章間ナビゲーション**: 前章・次章へのリンク

#### 4.2 コード例の記載方法
- `<code>` タグまたは `<pre><code>` タグを使用
- 実行可能で検証済みのコード例のみ掲載
- 構文ハイライトの適用（推奨：Prism.js）

#### 4.3 実習課題の設計原則
- 段階的な難易度設定
- 明確で具体的な実行手順
- 期待される結果の明示
- 学習者が自己評価できる内容

### 5. 品質保証

#### 5.1 HTMLバリデーション
- W3C HTML Validator での検証
- セマンティックHTMLの適切な使用
- アクセシビリティガイドライン（WCAG）への準拠

#### 5.2 レスポンシブデザイン確認
- デスクトップ、タブレット、スマートフォンでの表示確認
- サイドバーの折りたたみ機能の動作確認
- ナビゲーションの操作性確認

#### 5.3 コンテンツ品質チェック
- 誤字脱字の確認
- リンク切れの確認
- コード例の実行検証
- 技術的内容の正確性確認

### 6. 完成後の作業

#### 6.1 GitHubへの反映
- 適切なブランチ（feature/[技術名]-learning-guide）での作業
- 意味のあるコミットメッセージの作成
- プルリクエストの作成と詳細な説明

#### 6.2 関連ドキュメントの更新
- ルートREADME.mdの学習ガイド一覧更新
- チートシートとの連携確認
- 他のガイドラインとの整合性確認

#### 6.3 継続的改善
- 学習者フィードバックの収集
- 技術動向に応じた内容更新
- 定期的なリンク・内容の見直し

---

## 📝 開発における注意事項

### コーディング規約
- 一貫したHTMLタグの使用
- 適切なクラス名の付与
- コメントの適切な使用

### セキュリティ
- 外部リンクの安全性確認
- CDNリンクの信頼性確認

### パフォーマンス
- 画像の最適化
- CSSとJavaScriptの最小化
- 適切なキャッシュ設定

---

このガイドラインに従って新しい学習教材を作成することで、統一性と品質を保った技術ドキュメントを提供できます。