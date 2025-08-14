# SVG プレゼンテーションテンプレート

Inkscapeを使用してPDF変換可能なSVGプレゼンテーションテンプレートシステムです。

## ✨ 特徴

- **🎯 完璧なPDF変換**: InkscapeのネイティブSVG→PDF変換
- **📐 プレゼンテーションサイズ最適化**: 1280px × 720px (16:9)
- **🎨 カスタマイズ可能**: 色テーマ・フォント・レイアウトを簡単変更
- **📋 3つのレイアウト**: タイトル・目次・2列コンテンツ
- **🎪 豊富なアイコン**: Font Awesome互換のSVGアイコンライブラリ
- **⚡ 一括変換**: 複数ファイルの自動処理

## 📁 ディレクトリ構造

```
svg/
├── README.md                 # このドキュメント
├── convert-svg-to-pdf.sh     # PDF変換スクリプト
├── base-template.svg         # ベーステンプレート
├── templates/                # スライドテンプレート
│   ├── title-slide.svg       # タイトルスライド
│   ├── toc-slide.svg         # 目次スライド
│   └── content-slide.svg     # コンテンツスライド
├── icons/                    # アイコンライブラリ
│   └── icon-library.svg      # SVGアイコン定義
└── components/               # 再利用可能コンポーネント
    └── (未実装)
```

## 🚀 クイックスタート

### 1. 前提条件

```bash
# Inkscapeのインストール確認
inkscape --version

# インストールされていない場合
sudo apt-get install inkscape  # Ubuntu/Debian
sudo yum install inkscape      # CentOS/RHEL
brew install inkscape          # macOS
```

### 2. 基本的な使用方法

```bash
# 単一ファイル変換
./convert-svg-to-pdf.sh templates/title-slide.svg my-presentation-title.pdf

# 一括変換
./convert-svg-to-pdf.sh --batch templates/

# ヘルプ表示
./convert-svg-to-pdf.sh --help
```

### 3. 実行例

```bash
# タイトルスライドをPDF変換
./convert-svg-to-pdf.sh templates/title-slide.svg output/title.pdf
# ✅ 変換完了: output/title.pdf (28KB)

# 全テンプレートを一括変換
./convert-svg-to-pdf.sh --batch templates/
# 📊 変換結果: ✅ 成功: 3 ファイル
```

## 🎨 カスタマイズ方法

### 色テーマの変更

各SVGファイルの`<style>`セクションで色を変更：

```css
<style type="text/css"><![CDATA[
  .primary-color { fill: #ff6b35; }    /* オレンジテーマ */
  .background-color { fill: #f8f9fa; }
  .accent-color { fill: #fff3e0; }
  .text-color { fill: #212529; }
]]></style>
```

### テキストコンテンツの編集

```xml
<!-- タイトルの変更 -->
<text x="0" y="80" class="font-title text-color">
  <tspan x="0" dy="0">React開発</tspan>
  <tspan x="0" dy="50">基礎から応用まで</tspan>
</text>

<!-- 説明文の変更 -->
<text x="0" y="200" class="font-subtitle text-light">
  モダンなWebアプリケーション開発を学ぼう
</text>
```

### アイコンの使用

利用可能なアイコン（`icons/icon-library.svg`から）：

```xml
<!-- アイコンの使用例 -->
<use xlink:href="#icon-code" x="6" y="6" width="48" height="48" class="primary-color"/>

<!-- 利用可能なアイコン一覧 -->
<use xlink:href="#icon-microsoft"/>
<use xlink:href="#icon-code"/>
<use xlink:href="#icon-server"/>
<use xlink:href="#icon-database"/>
<use xlink:href="#icon-info-circle"/>
<use xlink:href="#icon-sitemap"/>
<use xlink:href="#icon-tools"/>
<use xlink:href="#icon-file-code"/>
<use xlink:href="#icon-cogs"/>
<use xlink:href="#icon-sync-alt"/>
<use xlink:href="#icon-cube"/>
<use xlink:href="#icon-laptop-code"/>
<use xlink:href="#icon-road"/>
<use xlink:href="#icon-question-circle"/>
<use xlink:href="#icon-book"/>
<use xlink:href="#icon-check-circle"/>
<use xlink:href="#icon-user"/>
<use xlink:href="#icon-users"/>
<use xlink:href="#icon-video"/>
<use xlink:href="#icon-exclamation-circle"/>
```

## 📋 テンプレートタイプ

### 1. タイトルスライド (`title-slide.svg`)

**用途**: プレゼンテーションの表紙  
**要素**: 
- メインタイトル（2行対応）
- サブタイトル
- 技術アイコン（4個まで）
- 日付
- 右側パターン背景

**カスタマイズ例**:
```xml
<!-- タイトル変更 -->
<tspan x="0" dy="0">Python Django</tspan>
<tspan x="0" dy="50">Webアプリ開発入門</tspan>

<!-- アイコン変更 -->
<use xlink:href="#icon-code" x="6" y="6" width="48" height="48" class="primary-color"/>
```

### 2. 目次スライド (`toc-slide.svg`)

**用途**: 目次・アジェンダ表示  
**要素**:
- 2列レイアウト（左6項目、右6項目）
- 番号付きアイコン
- プログレスバー
- 説明文

**カスタマイズ例**:
```xml
<!-- 目次項目の変更 -->
<text x="66" y="17" class="font-toc-item text-color">Django基礎</text>
<use xlink:href="#icon-code" x="36" y="3" width="18" height="18" class="primary-color"/>

<!-- プログレスバー調整 -->
<rect x="30" y="450" width="133.33" height="6" class="primary-color" rx="3"/>
<!-- width計算: (現在ページ/総ページ) × 400pt -->
```

### 3. コンテンツスライド (`content-slide.svg`)

**用途**: 本文コンテンツ表示  
**要素**:
- 2列レイアウト（3:2比率）
- 箇条書きリスト
- 情報ボックス
- セクション見出し

**カスタマイズ例**:
```xml
<!-- セクション見出し -->
<text x="0" y="130" class="font-heading text-color">Django MVCパターン</text>

<!-- 箇条書き項目 -->
<g class="bullet-point" transform="translate(0, 0)">
  <use xlink:href="#icon-check-circle" x="0" y="0" width="14" height="14" class="primary-color"/>
  <text x="22" y="12" class="font-body text-color">Model: データベース操作</text>
</g>

<!-- 情報ボックス -->
<g id="info-box" transform="translate(0, 280)">
  <rect x="0" y="0" width="280" height="80" class="accent-color" rx="4"/>
  <rect x="0" y="0" width="4" height="80" class="primary-color"/>
  <text x="15" y="20" class="font-info-title text-color">重要ポイント</text>
  <text x="15" y="40" class="font-body text-color">
    <tspan x="15" dy="0">Djangoでは設定より規約を重視します。</tspan>
    <tspan x="15" dy="15">ディレクトリ構造に従って開発を進めましょう。</tspan>
  </text>
</g>
```

## 🎯 ベストプラクティス

### レイアウトガイドライン

```xml
<!-- プレゼンテーションサイズの座標系 -->
<!-- viewBox="0 0 1280 720" (px単位) -->

<!-- マージン推奨値 -->
<!-- 上下: 60px, 左右: 60px -->
<!-- コンテンツエリア: 1160px × 600px -->

<!-- フォントサイズ推奨値 -->
<!-- タイトル: 32-42px -->
<!-- 見出し: 16-24px -->
<!-- 本文: 12-14px -->
<!-- 小文字: 10px -->
```

### テキスト配置のコツ

```xml
<!-- 長いテキストの改行 -->
<text x="0" y="30" class="font-body text-light">
  <tspan x="0" dy="0">長いテキストは適切な位置で</tspan>
  <tspan x="0" dy="18">改行してください。行間は18pt推奨です。</tspan>
</text>

<!-- 中央揃え -->
<text x="297.64" y="100" text-anchor="middle" class="font-title">
  中央揃えテキスト
</text>

<!-- 右揃え -->
<text x="550" y="100" text-anchor="end" class="font-body">
  右揃えテキスト
</text>
```

## 🔧 高度なカスタマイズ

### グラデーション追加

```xml
<defs>
  <linearGradient id="custom-gradient" x1="0%" y1="0%" x2="100%" y2="0%">
    <stop offset="0%" style="stop-color:#ff6b35;stop-opacity:1" />
    <stop offset="100%" style="stop-color:#f7931e;stop-opacity:1" />
  </linearGradient>
</defs>

<!-- 使用例 -->
<rect x="0" y="0" width="100" height="50" fill="url(#custom-gradient)"/>
```

### 独自アイコンの追加

```xml
<!-- icons/icon-library.svgに追加 -->
<symbol id="icon-custom" viewBox="0 0 24 24">
  <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"/>
</symbol>

<!-- 使用時 -->
<use xlink:href="#icon-custom" x="0" y="0" width="24" height="24" class="primary-color"/>
```

## 📊 変換品質最適化

### Inkscape変換オプション

```bash
# 高品質変換（テキストをパスに変換）
inkscape --export-type=pdf --export-text-to-path input.svg output.pdf

# フォント埋め込み（推奨）
inkscape --export-type=pdf --export-area-page input.svg output.pdf

# 背景透明化
inkscape --export-type=pdf --export-area-page --export-background-opacity=0 input.svg
```

### 品質チェックポイント

- ✅ **フォント**: システムフォントの使用を避け、一般的なフォントを使用
- ✅ **色**: RGB値で明確に指定（色名は避ける）
- ✅ **サイズ**: プレゼンテーション標準サイズ（1280 × 720px）
- ✅ **テキスト**: 読みやすいサイズ（最小10px推奨）

## 🚨 トラブルシューティング

### よくある問題と解決法

**問題**: フォントが正しく表示されない
```bash
# 解決策: システムフォントを確認
fc-list | grep "Segoe UI"

# 代替フォント使用
font-family: 'DejaVu Sans', 'Liberation Sans', sans-serif;
```

**問題**: アイコンが表示されない
```xml
<!-- 解決策: アイコン定義の確認 -->
<!-- icons/icon-library.svgからコピー -->
<symbol id="icon-name" viewBox="0 0 24 24">...</symbol>
```

**問題**: 変換でレイアウトが崩れる
```bash
# 解決策: 座標系を確認
# viewBoxとwidthheightの整合性をチェック
```

## 📈 使用例・ユースケース

### 技術プレゼンテーション
- 開発者向けセミナー
- 技術研修資料
- プロダクト紹介

### 教育コンテンツ
- プログラミング学習資料
- フレームワーク入門ガイド
- ベストプラクティス解説

### ビジネス資料
- 提案書
- 進捗報告
- システム設計書

## 🤝 貢献・カスタマイズ

### 新しいテンプレート追加

1. `base-template.svg`をコピー
2. 必要な要素を追加・修正
3. `templates/`ディレクトリに保存
4. 変換テストを実行

### アイコン追加

1. SVGパスを取得（24×24px推奨）
2. `icons/icon-library.svg`に`<symbol>`として追加
3. テンプレートで`<use>`要素で使用

## 📄 ライセンス

MIT License - 自由にカスタマイズ・再配布可能

## 🔗 関連リンク

- [Inkscape公式ドキュメント](https://inkscape.org/doc/)
- [SVG仕様書 (W3C)](https://www.w3.org/TR/SVG2/)
- [SVGアイコン作成ガイド](https://developer.mozilla.org/ja/docs/Web/SVG)

## 📞 サポート

問題が発生した場合：
1. このREADMEの該当セクションを確認
2. Inkscapeのバージョンを確認 (`inkscape --version`)
3. SVGファイルの構文エラーをチェック