#!/bin/bash

# Inkscape SVG to PDF変換スクリプト
# 使用方法: 
#   単一ファイル: ./convert-svg-to-pdf.sh input.svg output.pdf
#   一括変換: ./convert-svg-to-pdf.sh --batch [directory]

set -e  # エラー時に停止

# ヘルプ表示
show_help() {
    echo "SVG to PDF 変換スクリプト (Inkscape使用)"
    echo ""
    echo "使用方法:"
    echo "  単一ファイル変換:"
    echo "    $0 <input.svg> <output.pdf>"
    echo "    例: $0 title-slide.svg presentation-title.pdf"
    echo ""
    echo "  一括変換:"
    echo "    $0 --batch [directory]"
    echo "    例: $0 --batch templates/"
    echo "    例: $0 --batch (カレントディレクトリ)"
    echo ""
    echo "  オプション:"
    echo "    --help, -h    このヘルプを表示"
    echo "    --batch       一括変換モード"
    echo ""
}

# Inkscapeの存在確認
check_inkscape() {
    if ! command -v inkscape &> /dev/null; then
        echo "❌ エラー: Inkscapeがインストールされていません"
        echo "以下のコマンドでインストールしてください:"
        echo "  Ubuntu/Debian: sudo apt-get install inkscape"
        echo "  CentOS/RHEL: sudo yum install inkscape"
        echo "  macOS: brew install inkscape"
        exit 1
    fi
}

# SVGファイルかどうかチェック
is_svg_file() {
    local file="$1"
    [[ "$file" =~ \.svg$ ]] && [[ -f "$file" ]]
}

# 単一ファイル変換
convert_single_file() {
    local input_svg="$1"
    local output_pdf="$2"
    
    echo "🔄 変換中: $(basename "$input_svg") → $(basename "$output_pdf")"
    
    # Inkscapeで変換実行
    if inkscape \
        --export-type=pdf \
        --export-filename="$output_pdf" \
        --export-text-to-path \
        --export-area-page \
        "$input_svg" 2>/dev/null; then
        
        echo "✅ 変換完了: $output_pdf"
        if [[ -f "$output_pdf" ]]; then
            echo "📄 ファイルサイズ: $(du -h "$output_pdf" | cut -f1)"
        fi
        return 0
    else
        echo "❌ 変換失敗: $input_svg"
        return 1
    fi
}

# 一括変換
batch_convert() {
    local directory="${1:-.}"  # デフォルトはカレントディレクトリ
    local converted=0
    local failed=0
    
    if [[ ! -d "$directory" ]]; then
        echo "❌ エラー: ディレクトリ '$directory' が見つかりません"
        exit 1
    fi
    
    echo "📁 ディレクトリ '$directory' 内のSVGファイルを検索中..."
    
    # SVGファイルを再帰的に検索
    while IFS= read -r -d '' svg_file; do
        if is_svg_file "$svg_file"; then
            # 出力ファイル名を生成 (同じディレクトリにPDFで保存)
            local pdf_file="${svg_file%.svg}.pdf"
            
            if convert_single_file "$svg_file" "$pdf_file"; then
                ((converted++))
            else
                ((failed++))
            fi
            echo ""
        fi
    done < <(find "$directory" -name "*.svg" -type f -print0)
    
    # 結果サマリー
    echo "📊 変換結果:"
    echo "  ✅ 成功: $converted ファイル"
    echo "  ❌ 失敗: $failed ファイル"
    
    if [[ $failed -gt 0 ]]; then
        exit 1
    fi
}

# メイン処理
main() {
    # Inkscapeの存在確認
    check_inkscape
    
    # 引数チェック
    case "${1:-}" in
        --help|-h)
            show_help
            exit 0
            ;;
        --batch)
            batch_convert "$2"
            ;;
        "")
            echo "❌ エラー: 引数が不足しています"
            show_help
            exit 1
            ;;
        *)
            # 単一ファイル変換モード
            if [[ $# -ne 2 ]]; then
                echo "❌ エラー: 引数が正しくありません"
                echo "使用方法: $0 <input.svg> <output.pdf>"
                exit 1
            fi
            
            local input_svg="$1"
            local output_pdf="$2"
            
            # 入力ファイルの存在確認
            if [[ ! -f "$input_svg" ]]; then
                echo "❌ エラー: ファイル '$input_svg' が見つかりません"
                exit 1
            fi
            
            # SVGファイルかチェック
            if ! is_svg_file "$input_svg"; then
                echo "❌ エラー: '$input_svg' はSVGファイルではありません"
                exit 1
            fi
            
            # 出力ディレクトリの存在確認・作成
            local output_dir=$(dirname "$output_pdf")
            if [[ ! -d "$output_dir" ]]; then
                mkdir -p "$output_dir"
            fi
            
            convert_single_file "$input_svg" "$output_pdf"
            ;;
    esac
}

# スクリプト実行
main "$@"