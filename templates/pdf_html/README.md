# PDF HTML テンプレートシステム

1280×720pxのスライド形式PDF用HTML資料を効率的に作成・変換するための包括的なシステムです。

## システム構成

- **templates/**: 4種類のHTMLテンプレート（実際のサンプルコンテンツ付き）
- **components/**: 共通CSS・スタイル
- **convert-html-to-pdf.sh**: PDF変換スクリプト
- **base-template.md**: システム説明書

## テンプレート種類

1. **title-slide.html** - 表紙用テンプレート
2. **toc-slide.html** - 目次用テンプレート  
3. **content-slide.html** - 一般コンテンツ用テンプレート
4. **setup-slide.html** - セットアップ手順用テンプレート

各テンプレートには実際のASP.NET WebFormsサンプルコンテンツが含まれており、AIが直接編集可能です。

## 必要なツール

### wkhtmltopdf
HTMLからPDFへの変換に使用します。

```bash
# Ubuntu/Debian
sudo apt install wkhtmltopdf

# CentOS/RHEL
sudo yum install wkhtmltopdf

# macOS
brew install wkhtmltopdf
```

### pdftk (オプション)
複数PDFの結合に使用します。

```bash
# Ubuntu/Debian
sudo apt install pdftk

# macOS
brew install pdftk-java
```

## 基本的な使用方法

### 単一ファイル変換
```bash
# 基本的な変換
./convert-html-to-pdf.sh slide1.html

# 出力ファイル名を指定
./convert-html-to-pdf.sh slide1.html output.pdf

# 画質プリセットを指定
./convert-html-to-pdf.sh slide1.html -q 1920x1080
```

### 一括変換
```bash
# ディレクトリ内の全HTMLファイルを変換
./convert-html-to-pdf.sh -d ./slides/

# 出力ディレクトリを指定
./convert-html-to-pdf.sh -d ./slides/ -o ./pdf/
```

## オプション一覧

| オプション | 短縮形 | 説明 | 例 |
|-----------|--------|------|-----|
| `--width` | `-w` | ページ幅を指定 | `-w 1200px` |
| `--height` | `-h` | ページ高さを指定 | `-h 800px` |
| `--quality` | `-q` | 画質プリセット | `-q 1920x1080` |
| `--directory` | `-d` | 一括変換対象ディレクトリ | `-d ./slides/` |
| `--output-dir` | `-o` | 出力ディレクトリ | `-o ./pdf/` |
| `--help` | - | ヘルプ表示 | `--help` |

## 画質プリセット

| プリセット | 解像度 | PDF寸法 | 用途 |
|-----------|--------|---------|------|
| `1280x720` | 標準 | 959px × 540px | デフォルト、通常のスライド |
| `1920x1080` | 高解像度 | 1440px × 810px | 高品質プレゼンテーション |
| `A4` | A4用紙 | 794px × 1123px | 印刷用資料 |

## 詳細な使用例

### 1. サンプルスライドをPDF変換
```bash
# サンプルディレクトリの変換
./convert-html-to-pdf.sh -d /home/ichimaru/git/tech_docs/templates/pdf_html/pdf_html_sample/

# 高解像度で変換
./convert-html-to-pdf.sh -d /home/ichimaru/git/tech_docs/templates/pdf_html/pdf_html_sample/ -q 1920x1080 -o ./high_quality_pdf/
```

### 2. 特定のファイルのみ変換
```bash
# 表紙のみ
./convert-html-to-pdf.sh /home/ichimaru/git/tech_docs/templates/pdf_html/pdf_html_sample/1.html title_slide.pdf

# 目次のみ
./convert-html-to-pdf.sh /home/ichimaru/git/tech_docs/templates/pdf_html/pdf_html_sample/2.html toc_slide.pdf
```

### 3. カスタムサイズで変換
```bash
# カスタムサイズ指定
./convert-html-to-pdf.sh slide.html -w 1600px -h 900px custom_size.pdf
```

## スクリプトの機能

### ✅ 実装済み機能
- 単一ファイル変換
- ディレクトリ一括変換
- 画質プリセット選択
- カスタムサイズ指定
- エラーハンドリング
- 進捗表示
- ファイルサイズ表示
- PDF結合オプション

### 🔧 設定可能項目
- ページ幅・高さ
- マージン設定（固定：0）
- スマートシュリンク無効化
- ローカルファイルアクセス許可
- エラー処理設定

### 📊 出力情報
- 変換進捗状況
- 成功/失敗ファイル数
- 出力ファイルサイズ
- 処理時間（表示されない場合もあり）

## トラブルシューティング

### wkhtmltopdf が見つからない
```bash
# インストール確認
which wkhtmltopdf

# バージョン確認
wkhtmltopdf --version
```

### フォントが正しく表示されない
```bash
# システムフォントの確認
fc-list | grep -i "segoe\|noto"

# 日本語フォントのインストール
sudo apt install fonts-noto-cjk
```

### CSS/JSが読み込まれない
- CDNリンクが正しく設定されているか確認
- `--enable-local-file-access` オプションが有効になっているか確認

### PDFサイズが大きすぎる
- 画質プリセットを下げる（1920x1080 → 1280x720）
- 不要な画像やアニメーションを削除

## ファイル権限

スクリプトには実行権限が必要です：
```bash
chmod +x convert-html-to-pdf.sh
```

## 出力例

```bash
$ ./convert-html-to-pdf.sh -d ./slides/ -q 1920x1080

HTML to PDF Converter for Slide Presentations

一括変換開始: 12 ファイル
  入力: ./slides/
  出力: ./slides/pdf
  サイズ: 1440px × 810px

変換中: ./slides/1.html → ./slides/pdf/1.pdf
✓ 変換完了: ./slides/pdf/1.pdf
  ファイルサイズ: 245K

変換中: ./slides/2.html → ./slides/pdf/2.pdf
✓ 変換完了: ./slides/pdf/2.pdf
  ファイルサイズ: 189K

...

=== 変換結果 ===
成功: 12 ファイル

全PDFを1つのファイルに結合しますか？ (y/n): y
PDFを結合中...
✓ 結合完了: ./slides/pdf/merged_slides.pdf
```

## 関連ファイル

- `convert-html-to-pdf.sh` - メインスクリプト
- `base-template.md` - テンプレートシステム説明
- `layouts/` - HTMLテンプレート群
- `components/common-styles.css` - 共通CSS
- `variables.md` - テンプレート変数一覧