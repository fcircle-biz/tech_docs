#!/bin/bash

# HTML to PDF Converter for Slide Presentations
# HTMLスライドをPDFに変換するスクリプト

set -e  # エラー時に終了

# 色設定
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# デフォルト設定
DEFAULT_WIDTH="959px"
DEFAULT_HEIGHT="540px"
DEFAULT_QUALITY="1280x720"

# 使用方法を表示
show_usage() {
    echo -e "${BLUE}HTML to PDF Converter for Slide Presentations${NC}"
    echo
    echo "使用方法:"
    echo "  $0 <input.html> [output.pdf] [options]"
    echo
    echo "オプション:"
    echo "  -w, --width WIDTH      ページ幅を指定 (デフォルト: ${DEFAULT_WIDTH})"
    echo "  -h, --height HEIGHT    ページ高さを指定 (デフォルト: ${DEFAULT_HEIGHT})"
    echo "  -q, --quality QUALITY  画質プリセット (1280x720, 1920x1080, A4)"
    echo "  -d, --directory DIR    ディレクトリ内の全HTMLファイルを一括変換"
    echo "  -o, --output-dir DIR   出力ディレクトリを指定 (一括変換時)"
    echo "  -m, --merge            PDFを自動的に結合する (中間ファイルは自動削除)"
    echo "  --merge-name NAME      結合PDFのファイル名を指定 (デフォルト: merged_slides.pdf)"
    echo "  --help                 このヘルプを表示"
    echo
    echo "画質プリセット:"
    echo "  1280x720  : 標準スライド (959px × 540px) - デフォルト"
    echo "  1920x1080 : 高解像度スライド (1440px × 810px)"
    echo "  A4        : A4用紙サイズ (794px × 1123px)"
    echo
    echo "例:"
    echo "  $0 slide1.html"
    echo "  $0 slide1.html output.pdf"
    echo "  $0 slide1.html -q 1920x1080"
    echo "  $0 -d ./slides/ -o ./pdf/"
    echo "  $0 -d ./slides/ -m --merge-name presentation.pdf"
    echo
    echo "必要なツール:"
    echo "  - wkhtmltopdf (インストール: sudo apt install wkhtmltopdf)"
}

# wkhtmltopdfの存在確認
check_wkhtmltopdf() {
    if ! command -v wkhtmltopdf &> /dev/null; then
        echo -e "${RED}エラー: wkhtmltopdf が見つかりません${NC}"
        echo "インストール方法:"
        echo "  Ubuntu/Debian: sudo apt install wkhtmltopdf"
        echo "  CentOS/RHEL:   sudo yum install wkhtmltopdf"
        echo "  macOS:         brew install wkhtmltopdf"
        exit 1
    fi
}

# PDF結合ツールの存在確認とツール選択
check_pdf_tools() {
    local merge_required="$1"
    
    if [[ "$merge_required" == "true" ]]; then
        if command -v gs &> /dev/null; then
            PDF_MERGE_TOOL="ghostscript"
            return 0
        elif command -v pdftk &> /dev/null; then
            PDF_MERGE_TOOL="pdftk"
            return 0
        else
            echo -e "${RED}エラー: PDF結合ツールが見つかりません${NC}"
            echo "以下のいずれかをインストールしてください:"
            echo "  Ghostscript: sudo apt install ghostscript"
            echo "  PDFtk:       sudo apt install pdftk"
            exit 1
        fi
    fi
}

# 画質プリセット設定
set_quality_preset() {
    case "$1" in
        "1280x720")
            PAGE_WIDTH="959px"
            PAGE_HEIGHT="540px"
            ;;
        "1920x1080")
            PAGE_WIDTH="1440px"
            PAGE_HEIGHT="810px"
            ;;
        "A4")
            PAGE_WIDTH="794px"
            PAGE_HEIGHT="1123px"
            ;;
        *)
            echo -e "${RED}エラー: 不明な画質プリセット '$1'${NC}"
            echo "利用可能なプリセット: 1280x720, 1920x1080, A4"
            exit 1
            ;;
    esac
}

# PDF結合機能
merge_pdfs() {
    local output_dir="$1"
    local merge_name="$2"
    local temp_dir="$3"
    
    local merged_file="$output_dir/$merge_name"
    local pdf_files=($(find "$temp_dir" -name "*.pdf" -type f | sort))
    
    if [[ ${#pdf_files[@]} -lt 2 ]]; then
        echo -e "${YELLOW}警告: 結合するPDFファイルが2つ未満です${NC}"
        return 1
    fi
    
    echo -e "${BLUE}PDF結合中: ${#pdf_files[@]} ファイル → $merge_name${NC}"
    
    case "$PDF_MERGE_TOOL" in
        "ghostscript")
            gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile="$merged_file" "${pdf_files[@]}" 2>/dev/null
            ;;
        "pdftk")
            pdftk "${pdf_files[@]}" cat output "$merged_file" 2>/dev/null
            ;;
        *)
            echo -e "${RED}エラー: 不明なPDF結合ツール${NC}"
            return 1
            ;;
    esac
    
    if [[ $? -eq 0 && -f "$merged_file" ]]; then
        echo -e "${GREEN}✓ PDF結合完了: $merged_file${NC}"
        local file_size=$(ls -lh "$merged_file" | awk '{print $5}')
        echo "  ファイルサイズ: $file_size"
        return 0
    else
        echo -e "${RED}✗ PDF結合失敗${NC}"
        return 1
    fi
}

# 単一ファイル変換
convert_single_file() {
    local input_file="$1"
    local output_file="$2"
    
    # 入力ファイルの存在確認
    if [[ ! -f "$input_file" ]]; then
        echo -e "${RED}エラー: 入力ファイル '$input_file' が見つかりません${NC}"
        exit 1
    fi
    
    # 出力ファイル名の生成（未指定の場合）
    if [[ -z "$output_file" ]]; then
        output_file="${input_file%.*}.pdf"
    fi
    
    # 出力ディレクトリの作成
    local output_dir=$(dirname "$output_file")
    if [[ ! -d "$output_dir" ]]; then
        mkdir -p "$output_dir"
    fi
    
    echo -e "${BLUE}変換中: $input_file → $output_file${NC}"
    echo "  サイズ: ${PAGE_WIDTH} × ${PAGE_HEIGHT}"
    
    # wkhtmltopdf実行
    wkhtmltopdf \
        --page-width "$PAGE_WIDTH" \
        --page-height "$PAGE_HEIGHT" \
        --margin-top 0 \
        --margin-right 0 \
        --margin-bottom 0 \
        --margin-left 0 \
        --enable-local-file-access \
        --load-error-handling ignore \
        --load-media-error-handling ignore \
        "$input_file" \
        "$output_file" 2>/dev/null
    
    if [[ $? -eq 0 ]]; then
        echo -e "${GREEN}✓ 変換完了: $output_file${NC}"
        # ファイルサイズ表示
        local file_size=$(ls -lh "$output_file" | awk '{print $5}')
        echo "  ファイルサイズ: $file_size"
    else
        echo -e "${RED}✗ 変換失敗: $input_file${NC}"
        return 1
    fi
}

# ディレクトリ一括変換
convert_directory() {
    local input_dir="$1"
    local output_dir="$2"
    local auto_merge="$3"
    local merge_name="$4"
    
    # 入力ディレクトリの存在確認
    if [[ ! -d "$input_dir" ]]; then
        echo -e "${RED}エラー: 入力ディレクトリ '$input_dir' が見つかりません${NC}"
        exit 1
    fi
    
    # 出力ディレクトリのデフォルト設定
    if [[ -z "$output_dir" ]]; then
        output_dir="${input_dir}/pdf"
    fi
    
    # 結合ファイル名のデフォルト設定
    if [[ -z "$merge_name" ]]; then
        merge_name="merged_slides.pdf"
    fi
    
    # 出力ディレクトリの作成
    if [[ ! -d "$output_dir" ]]; then
        mkdir -p "$output_dir"
        echo -e "${YELLOW}出力ディレクトリを作成しました: $output_dir${NC}"
    fi
    
    # 中間ファイル用の一時ディレクトリ作成（結合時のみ）
    local temp_dir=""
    local final_output_dir="$output_dir"
    if [[ "$auto_merge" == "true" ]]; then
        temp_dir=$(mktemp -d)
        echo -e "${YELLOW}中間ファイル用一時ディレクトリ: $temp_dir${NC}"
        final_output_dir="$temp_dir"
    fi
    
    # HTMLファイルを検索
    local html_files=($(find "$input_dir" -maxdepth 1 -name "*.html" -type f | sort))
    
    if [[ ${#html_files[@]} -eq 0 ]]; then
        echo -e "${YELLOW}警告: '$input_dir' にHTMLファイルが見つかりません${NC}"
        [[ -n "$temp_dir" ]] && rm -rf "$temp_dir"
        exit 0
    fi
    
    echo -e "${BLUE}一括変換開始: ${#html_files[@]} ファイル${NC}"
    echo "  入力: $input_dir"
    echo "  出力: $output_dir"
    if [[ "$auto_merge" == "true" ]]; then
        echo "  結合: $merge_name"
    fi
    echo "  サイズ: ${PAGE_WIDTH} × ${PAGE_HEIGHT}"
    echo
    
    local success_count=0
    local fail_count=0
    
    # 各HTMLファイルを変換
    for html_file in "${html_files[@]}"; do
        local filename=$(basename "$html_file")
        local output_file="$final_output_dir/${filename%.*}.pdf"
        
        if convert_single_file "$html_file" "$output_file"; then
            success_count=$((success_count + 1))
        else
            fail_count=$((fail_count + 1))
        fi
        echo
    done
    
    # 結果サマリー
    echo -e "${BLUE}=== 変換結果 ===${NC}"
    echo -e "${GREEN}成功: $success_count ファイル${NC}"
    if [[ $fail_count -gt 0 ]]; then
        echo -e "${RED}失敗: $fail_count ファイル${NC}"
    fi
    
    # PDF結合処理
    if [[ "$auto_merge" == "true" && $success_count -gt 1 ]]; then
        echo
        if merge_pdfs "$output_dir" "$merge_name" "$temp_dir"; then
            # 結合成功時：中間ファイル削除
            echo -e "${YELLOW}中間PDFファイルを削除中...${NC}"
            rm -rf "$temp_dir"
            echo -e "${GREEN}✓ 中間ファイル削除完了${NC}"
        else
            # 結合失敗時：中間ファイルを本来の出力先にコピー
            echo -e "${YELLOW}結合に失敗したため、個別PDFファイルを保持します${NC}"
            cp "$temp_dir"/*.pdf "$output_dir/" 2>/dev/null
            rm -rf "$temp_dir"
        fi
    elif [[ "$auto_merge" == "true" && $success_count -le 1 ]]; then
        # 結合対象ファイルが不足
        echo -e "${YELLOW}結合するファイルが不足のため、個別PDFを生成しました${NC}"
        if [[ -n "$temp_dir" ]]; then
            cp "$temp_dir"/*.pdf "$output_dir/" 2>/dev/null
            rm -rf "$temp_dir"
        fi
    fi
}

# メイン処理
main() {
    local input_file=""
    local output_file=""
    local input_dir=""
    local output_dir=""
    local auto_merge="false"
    local merge_name="merged_slides.pdf"
    local PAGE_WIDTH="$DEFAULT_WIDTH"
    local PAGE_HEIGHT="$DEFAULT_HEIGHT"
    
    # 引数解析
    while [[ $# -gt 0 ]]; do
        case $1 in
            --help)
                show_usage
                exit 0
                ;;
            -w|--width)
                PAGE_WIDTH="$2"
                shift 2
                ;;
            -h|--height)
                PAGE_HEIGHT="$2"
                shift 2
                ;;
            -q|--quality)
                set_quality_preset "$2"
                shift 2
                ;;
            -d|--directory)
                input_dir="$2"
                shift 2
                ;;
            -o|--output-dir)
                output_dir="$2"
                shift 2
                ;;
            -m|--merge)
                auto_merge="true"
                shift
                ;;
            --merge-name)
                merge_name="$2"
                shift 2
                ;;
            -*)
                echo -e "${RED}エラー: 不明なオプション '$1'${NC}"
                show_usage
                exit 1
                ;;
            *)
                if [[ -z "$input_file" ]]; then
                    input_file="$1"
                elif [[ -z "$output_file" ]]; then
                    output_file="$1"
                else
                    echo -e "${RED}エラー: 引数が多すぎます${NC}"
                    show_usage
                    exit 1
                fi
                shift
                ;;
        esac
    done
    
    # wkhtmltopdfの存在確認
    check_wkhtmltopdf
    
    # PDF結合ツールの確認（必要時のみ）
    check_pdf_tools "$auto_merge"
    
    # 実行モード判定
    if [[ -n "$input_dir" ]]; then
        # ディレクトリ一括変換
        convert_directory "$input_dir" "$output_dir" "$auto_merge" "$merge_name"
    elif [[ -n "$input_file" ]]; then
        # 単一ファイル変換
        convert_single_file "$input_file" "$output_file"
    else
        echo -e "${RED}エラー: 入力ファイルまたはディレクトリを指定してください${NC}"
        show_usage
        exit 1
    fi
}

# 引数なしの場合はヘルプを表示
if [[ $# -eq 0 ]]; then
    show_usage
    exit 0
fi

# メイン処理実行
main "$@"