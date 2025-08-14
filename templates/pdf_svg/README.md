# SVG プレゼンテーションテンプレート

Inkscapeを使用してPDF変換可能なSVGプレゼンテーションテンプレートシステムです。  
**大きなフォントサイズと最適化されたレイアウトで、優れた視認性を実現します。**

## ✨ 特徴

- **📖 優れた視認性**: 大きなフォントサイズ（16px〜48px）で読みやすさを重視
- **🎯 完璧なPDF変換**: InkscapeのネイティブSVG→PDF変換
- **📐 プレゼンテーションサイズ最適化**: 1280px × 720px (16:9)
- **🎨 カスタマイズ可能**: 色テーマ・フォント・レイアウトを簡単変更
- **📋 3つのレイアウト**: タイトル・目次・2列コンテンツ
- **🎪 豊富なアイコン**: Font Awesome互換のSVGアイコンライブラリ
- **⚡ 一括変換**: 複数ファイルの自動処理
- **🔧 レスポンシブ設計**: 適切な間隔と配置で文字の重なりを防止

## 📁 ディレクトリ構造

```
pdf_svg/
├── README.md                 # このドキュメント
├── convert-svg-to-pdf.sh     # PDF変換スクリプト
├── base-template.svg         # ベーステンプレート（最新フォント設定）
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

## 🎨 フォントサイズとスタイル（2024年8月更新）

### 統一されたフォントサイズ

すべてのテンプレートで読みやすさを重視した大きなフォントサイズを採用：

```css
/* 基本フォントサイズ */
.font-title         { font-size: 48px; font-weight: bold; }      /* メインタイトル */
.font-subtitle      { font-size: 24px; font-weight: normal; }    /* サブタイトル */
.font-heading       { font-size: 30px; font-weight: bold; }      /* セクション見出し */
.font-subheading    { font-size: 20px; font-weight: 600; }       /* サブ見出し */
.font-body          { font-size: 16px; font-weight: normal; }    /* 本文 */
.font-body-large    { font-size: 18px; font-weight: normal; }    /* 大きめ本文 */
.font-small         { font-size: 12px; font-weight: normal; }    /* 小文字 */

/* 専用フォントサイズ */
.font-info-title    { font-size: 16px; font-weight: 600; }       /* 情報ボックスタイトル */
.font-toc-item      { font-size: 18px; font-weight: normal; }    /* 目次項目 */
.font-toc-number    { font-size: 14px; font-weight: bold; }      /* 目次番号 */
.font-date          { font-size: 20px; font-weight: normal; }    /* 日付 */
```

### レイアウト最適化

- **行間**: 大きなフォントに適した22px間隔
- **要素間隔**: アイコンとテキストの適切な配置（25px〜50px）
- **マージン**: 上下左右60px、コンテンツエリア1160px × 600px
- **アイコンサイズ**: 16×16px〜20×20px（用途に応じて調整）

## 📋 テンプレートタイプ詳細

### 1. タイトルスライド (`title-slide.svg`)

**用途**: プレゼンテーションの表紙  
**改善点**: 大きなタイトル（56px）、適切な行間（65px）、拡大されたアイコン

**要素**: 
- メインタイトル（2行対応、56px）
- サブタイトル（26px）
- 技術アイコン（35px円、4個まで）
- 日付（20px）
- 右側パターン背景

**カスタマイズ例**:
```xml
<!-- タイトル変更（大きなフォント） -->
<text x="0" y="90" class="font-title text-color">
  <tspan x="0" dy="0">Python Django</tspan>
  <tspan x="0" dy="65">Webアプリ開発入門</tspan>
</text>

<!-- アイコン変更（拡大サイズ） -->
<circle cx="35" cy="35" r="35" fill="white" filter="url(#drop-shadow)"/>
<use xlink:href="#icon-code" x="11" y="11" width="48" height="48" class="primary-color"/>
```

### 2. 目次スライド (`toc-slide.svg`)

**用途**: 目次・アジェンダ表示  
**改善点**: 目次項目フォント18px、適切な項目間隔（50px）、大きな番号円（14px）

**要素**:
- 2列レイアウト（左6項目、右6項目）
- 番号付きアイコン（14px円）
- プログレスバー（8px高）
- 説明文（16px）

**カスタマイズ例**:
```xml
<!-- 目次項目の変更（大きなフォント） -->
<g class="toc-item" transform="translate(0, 0)">
  <circle cx="14" cy="14" r="14" class="primary-color"/>
  <text x="14" y="19" class="font-toc-number text-white" text-anchor="middle">1</text>
  <use xlink:href="#icon-code" x="40" y="4" width="20" height="20" class="primary-color"/>
  <text x="70" y="20" class="font-toc-item text-color">Django基礎</text>
</g>

<!-- プログレスバー調整（拡大） -->
<rect x="50" y="550" width="700" height="8" fill="#e5e7eb" rx="4"/>
<rect x="50" y="550" width="116" height="8" class="primary-color" rx="4"/>
```

### 3. コンテンツスライド (`content-slide.svg`)

**用途**: 本文コンテンツ表示  
**改善点**: 本文16px、見出し20px、適切な箇条書き間隔（30px）

**要素**:
- 2列レイアウト（適切な境界線配置）
- 箇条書きリスト（16px アイコン）
- 情報ボックス（520px幅、90px高）
- セクション見出し（20px）

**カスタマイズ例**:
```xml
<!-- セクション見出し（大きなフォント） -->
<text x="0" y="130" class="font-heading text-color">Django MVCパターン</text>

<!-- 箇条書き項目（適切な間隔） -->
<g class="bullet-point" transform="translate(0, 0)">
  <use xlink:href="#icon-check-circle" x="0" y="0" width="16" height="16" class="primary-color"/>
  <text x="25" y="14" class="font-body text-color">Model: データベース操作</text>
</g>

<!-- 情報ボックス（拡大サイズ） -->
<g id="info-box" transform="translate(0, 320)">
  <rect x="0" y="0" width="520" height="90" class="accent-color" rx="4"/>
  <rect x="0" y="0" width="4" height="90" class="primary-color"/>
  <text x="15" y="25" class="font-info-title text-color">重要ポイント</text>
  <text x="15" y="50" class="font-body text-color">
    <tspan x="15" dy="0">Djangoでは設定より規約を重視します。</tspan>
    <tspan x="15" dy="20">ディレクトリ構造に従って開発を進めましょう。</tspan>
  </text>
</g>
```

## 🎯 新しいレイアウトガイドライン

### 推奨座標系と配置

```xml
<!-- プレゼンテーションサイズの座標系 -->
<!-- viewBox="0 0 1280 720" (px単位) -->

<!-- 最適化されたマージン値 -->
<!-- 上下: 60px, 左右: 50-60px -->
<!-- コンテンツエリア: 1170px × 600px -->

<!-- 新しいフォントサイズ推奨値 -->
<!-- メインタイトル: 48-56px -->
<!-- セクション見出し: 20-30px -->
<!-- 本文: 16-18px -->
<!-- 小文字: 12px -->
```

### テキスト配置のベストプラクティス

```xml
<!-- 長いテキストの改行（最適化された行間） -->
<text x="0" y="30" class="font-body-large text-light">
  <tspan x="0" dy="0">長いテキストは適切な位置で</tspan>
  <tspan x="0" dy="22">改行してください。行間は22px推奨です。</tspan>
</text>

<!-- 箇条書きの適切な間隔 -->
<g class="bullet-point" transform="translate(0, 0)">
  <use xlink:href="#icon-check-circle" x="0" y="0" width="16" height="16" class="primary-color"/>
  <text x="25" y="14" class="font-body text-color">項目1</text>
</g>
<g class="bullet-point" transform="translate(0, 30)"><!-- 30px間隔 -->
  <use xlink:href="#icon-check-circle" x="0" y="0" width="16" height="16" class="primary-color"/>
  <text x="25" y="14" class="font-body text-color">項目2</text>
</g>
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

### アイコンの使用

利用可能なアイコン（各テンプレートに組み込み済み）：

```xml
<!-- アイコンの使用例（最適化されたサイズ） -->
<use xlink:href="#icon-code" x="0" y="0" width="20" height="20" class="primary-color"/>

<!-- 利用可能なアイコン一覧 -->
<use xlink:href="#icon-microsoft"/>    <!-- Microsoft ロゴ -->
<use xlink:href="#icon-code"/>         <!-- コードアイコン -->
<use xlink:href="#icon-server"/>       <!-- サーバーアイコン -->
<use xlink:href="#icon-database"/>     <!-- データベースアイコン -->
<use xlink:href="#icon-info-circle"/>  <!-- 情報アイコン -->
<use xlink:href="#icon-sitemap"/>      <!-- サイトマップ -->
<use xlink:href="#icon-tools"/>        <!-- ツールアイコン -->
<use xlink:href="#icon-file-code"/>    <!-- ファイルアイコン -->
<use xlink:href="#icon-cogs"/>         <!-- 設定アイコン -->
<use xlink:href="#icon-sync-alt"/>     <!-- 同期アイコン -->
<use xlink:href="#icon-cube"/>         <!-- キューブアイコン -->
<use xlink:href="#icon-laptop-code"/>  <!-- ラップトップアイコン -->
<use xlink:href="#icon-road"/>         <!-- ロードマップアイコン -->
<use xlink:href="#icon-question-circle"/> <!-- 質問アイコン -->
<use xlink:href="#icon-book"/>         <!-- 本アイコン -->
<use xlink:href="#icon-check-circle"/> <!-- チェックアイコン -->
<use xlink:href="#icon-user"/>         <!-- ユーザーアイコン -->
```

## 🔧 高度なカスタマイズ

### 新しいフォントクラスの追加

```css
/* base-template.svgに追加 */
.font-extra-large { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 60px; font-weight: bold; }
.font-caption     { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 14px; font-weight: normal; }
```

### レスポンシブ要素の作成

```xml
<!-- 可変幅の情報ボックス -->
<g id="responsive-info-box" transform="translate(0, 320)">
  <rect x="0" y="0" width="100%" height="90" class="accent-color" rx="4"/>
  <rect x="0" y="0" width="4" height="90" class="primary-color"/>
  <!-- コンテンツが自動調整 -->
</g>
```

## 📊 変換品質最適化

### Inkscape変換オプション

```bash
# 高品質変換（大きなフォント対応）
inkscape --export-type=pdf --export-area-page input.svg output.pdf

# DPI設定（高解像度）
inkscape --export-type=pdf --export-dpi=300 input.svg output.pdf

# フォント埋め込み（推奨）
inkscape --export-type=pdf --export-text-to-path input.svg output.pdf
```

### 品質チェックポイント

- ✅ **フォント**: 16px以上で読みやすさを確保
- ✅ **間隔**: 要素間に十分な余白（30px以上推奨）
- ✅ **色**: 高コントラスト比（WCAG AA準拠）
- ✅ **アイコン**: 16px以上のサイズで視認性確保

## 🚨 トラブルシューティング

### よくある問題と解決法

**問題**: 大きなフォントでレイアウトが崩れる
```xml
<!-- 解決策: 適切な間隔設定 -->
<!-- tspanのdy値を調整 -->
<tspan x="0" dy="22">改行部分は22px間隔</tspan>

<!-- 要素間隔を50px以上に設定 -->
<g transform="translate(0, 50)">...</g>
```

**問題**: アイコンとテキストの配置がずれる
```xml
<!-- 解決策: 統一されたサイズ使用 -->
<!-- アイコン: 16×16px または 20×20px -->
<use xlink:href="#icon-name" x="0" y="0" width="16" height="16"/>
<text x="25" y="14" class="font-body">テキスト</text>
```

**問題**: フォントが小さく見える
```bash
# 解決策: 新しいフォントクラスを使用
# .font-body (16px) または .font-body-large (18px) を使用
```

## 📈 アクセシビリティと視認性の向上

### WCAG準拠の色設計

```css
/* 高コントラスト色設定 */
.text-color { fill: #333333; }      /* 4.5:1 コントラスト比 */
.text-light { fill: #666666; }      /* 3:1 コントラスト比 */
.primary-color { fill: #0078d4; }   /* Microsoft アクセシブルブルー */
```

### 読みやすさの最適化

- **最小フォントサイズ**: 12px（推奨16px以上）
- **行間**: フォントサイズの1.2〜1.5倍
- **文字間隔**: 適切な letter-spacing
- **色の対比**: 背景色との十分なコントラスト

## 🤝 貢献・カスタマイズ

### 新しいテンプレート追加

1. `base-template.svg`をコピー（最新のフォント設定込み）
2. 必要な要素を追加・修正
3. フォントサイズガイドラインに従って調整
4. `templates/`ディレクトリに保存
5. 変換テストを実行

### レイアウト改善の貢献

1. 視認性テストを実施
2. 異なるディスプレイサイズで確認
3. フォントサイズの一貫性をチェック
4. アクセシビリティガイドラインに準拠

## 📄 ライセンス

MIT License - 自由にカスタマイズ・再配布可能

## 🔗 関連リンク

- [Inkscape公式ドキュメント](https://inkscape.org/doc/)
- [SVG仕様書 (W3C)](https://www.w3.org/TR/SVG2/)
- [WCAGアクセシビリティガイドライン](https://www.w3.org/WAI/WCAG21/quickref/)
- [SVGアイコン作成ガイド](https://developer.mozilla.org/ja/docs/Web/SVG)

## 📞 サポート

問題が発生した場合：
1. このREADMEの該当セクションを確認
2. フォントサイズとレイアウト設定をチェック
3. Inkscapeのバージョンを確認 (`inkscape --version`)
4. SVGファイルの構文エラーをチェック

**更新履歴**:
- 2024年8月: フォントサイズ大幅改善、レイアウト最適化、視認性向上