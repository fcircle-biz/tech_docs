---
description: HTML技術ガイドに図解を生成して埋め込むワークフロー。
---

# 技術ガイド図解ワークフロー

このワークフローは、HTML学習教材に視覚的な補助（図解）を追加するプロセスを自動化します。HTMLを直接分析するか、事前に生成された提案レポートを使用することができます。

## 入力
- **Target**: (必須) 特定のHTMLファイル、または `[tech]-learning-material-[XX].html` ファイルを含むディレクトリ。
- **ReportPath**: (オプション) 事前に分析された提案を含む `illustration_suggestions.md` ファイルへのパス。

## 手順

1.  **分析モードの決定**:
    - **`ReportPath` が指定された場合**:
        - `ReportPath` にあるマークダウンレポートを読み込む。
        - コンテンツを解析し、**Target** ファイルに対する提案を抽出する。
        - **解析ルール** (日本語レポート向け):
            - ファイルヘッダーを探す: `## ファイル: [Path]` または `## File: [Path]`。
            - ヘッダーに続くテーブルから行を抽出する。
            - カラムのマッピング:
                - `セクション / コンテキスト` -> **Location/Context** (挿入位置/文脈)
                - `提案` -> **Subject** (プロンプトの主題)
                - `理由` -> **Style/Focus** (プロンプトの文脈・スタイル)
    - **`ReportPath` が指定されていない場合**:
        - **Target** のHTMLファイルを直接分析する。
        - 各章につき1〜3個の重要なセクション（抽象的な概念、プロセスフロー、比喩など）を特定する。

2.  **ディレクトリ構造の準備**:
    - HTMLファイルと同じフォルダに `img` ディレクトリが存在するか確認する。
    - 存在しない場合は作成する: `mkdir -p [path/to/html/dir]/img`。

3.  **図解プロンプトの作成とプレースホルダー生成**:
    - 特定された各項目について（レポートまたは直接分析から）:
        - **プロンプトの構築**:
            - **Style**: 「CUTE, KAWAII, flat vector-style」。パステルカラー、丸みのある形状、親しみやすい雰囲気、ちびキャラ（Chibi characters）。
            - **Subject**: 「提案」または「Subject」に基づく。
            - **Context**: 「理由」または「Style/Focus」を使用して画像を洗練させる。
            - **Text**: 画像内にテキストを含める場合、**日本語**を指定する（例: `Text in image (Japanese): '...'`）。
            - **Format**: 横長 (landscape)。**ファイル形式**: JPG。
        - **プレースホルダー画像の生成**:
            - ImageMagick (`convert`) を使用して、以下の情報を含むプレースホルダー画像を作成する。
                - ファイル名
                - AI生成用プロンプト（英語）
                - 画像の内容説明（日本語）
            - **コマンド例**:
                ```bash
                convert -size 800x400 xc:lightgray -gravity center -font /usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc -pointsize 16 -fill black -annotate 0 "FILE: [filename]\n\n[PROMPT FOR AI]\n[English Prompt]\n\nCONTENT: [Japanese Description]\n\nDETAILS:\n[Details...]" [path/to/img/filename.jpg]
                ```
        - **保存**: `img` ディレクトリに保存する。拡張子は `.jpg` とする。

4.  **画像の埋め込み**:
    - HTMLファイルに画像を挿入する。
    - **位置**:
        - レポート使用時: "Location/Context" に一致するテキストを探す（必要に応じてあいまい検索）。
        - 直接分析時: 関連する段落またはヘッダーの後に挿入する。
    - **HTML構造**:
        ```html
        <figure class="my-8 text-center">
            <img src="./img/[filename]" alt="[Subject - 日本語の説明]" class="rounded-lg shadow-md mx-auto max-w-3xl border border-gray-200">
            <figcaption class="mt-2 text-sm text-slate-500">[Subject - 日本語の説明]</figcaption>
        </figure>
        ```
    - **スタイリング**: Tailwind CSSのセットアップ (v2/v3) に合わせる。キャプションには `text-slate-500` (または `text-gray-500`) を使用する。

5.  **レビュー**:
    - 画像パスがHTMLファイルからの相対パスとして正しいか確認する。
    - レイアウト（間隔、配置）が適切か確認する。
