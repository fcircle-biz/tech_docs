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
    echo ""
    echo "使用方法:"
    echo "  $0 <input.html> [output.pdf] [options]"
    echo ""
    echo "オプション:"
    echo "  -w, --width WIDTH      ページ幅を指定 (デフォルト: ${DEFAULT_WIDTH})"
    echo "  -h, --height HEIGHT    ページ高さを指定 (デフォルト: ${DEFAULT_HEIGHT})"
    echo "  -q, --quality QUALITY  画質プリセット (1280x720, 1920x1080, A4)"
    echo "  -d, --directory DIR    ディレクトリ内の全HTMLファイルを一括変換"
    echo "  -o, --output-dir DIR   出力ディレクトリを指定 (一括変換時)"
    echo "  --help                 このヘルプを表示"
    echo ""
    echo "画質プリセット:"
    echo "  1280x720  : 標準スライド (959px × 540px) - デフォルト"
    echo "  1920x1080 : 高解像度スライド (1440px × 810px)"
    echo "  A4        : A4用紙サイズ (794px × 1123px)"
    echo ""
    echo "例:"
    echo "  $0 slide1.html"
    echo "  $0 slide1.html output.pdf"
    echo "  $0 slide1.html -q 1920x1080"
    echo "  $0 -d ./slides/ -o ./pdf/"
    echo ""
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
        --disable-smart-shrinking \
        --enable-local-file-access \
        --load-error-handling ignore \
        --load-media-error-handling ignore \
        "$input_file" \
        "$output_file"
    
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
    
    # 入力ディレクトリの存在確認
    if [[ ! -d "$input_dir" ]]; then
        echo -e "${RED}エラー: 入力ディレクトリ '$input_dir' が見つかりません${NC}"
        exit 1
    fi
    
    # 出力ディレクトリのデフォルト設定
    if [[ -z "$output_dir" ]]; then
        output_dir="${input_dir}/pdf"
    fi
    
    # 出力ディレクトリの作成
    if [[ ! -d "$output_dir" ]]; then
        mkdir -p "$output_dir"
        echo -e "${YELLOW}出力ディレクトリを作成しました: $output_dir${NC}"
    fi
    
    # HTMLファイルを検索
    local html_files=($(find "$input_dir" -maxdepth 1 -name "*.html" -type f | sort))
    
    if [[ ${#html_files[@]} -eq 0 ]]; then
        echo -e "${YELLOW}警告: '$input_dir' にHTMLファイルが見つかりません${NC}"
        exit 0
    fi
    
    echo -e "${BLUE}一括変換開始: ${#html_files[@]} ファイル${NC}"
    echo "  入力: $input_dir"
    echo "  出力: $output_dir"
    echo "  サイズ: ${PAGE_WIDTH} × ${PAGE_HEIGHT}"
    echo ""
    
    local success_count=0
    local fail_count=0
    
    # 各HTMLファイルを変換
    for html_file in "${html_files[@]}"; do
        local filename=$(basename "$html_file")
        local output_file="$output_dir/${filename%.*}.pdf"
        
        if convert_single_file "$html_file" "$output_file"; then
            ((success_count++))
        else
            ((fail_count++))
        fi
        echo ""
    done
    
    # 結果サマリー
    echo -e "${BLUE}=== 変換結果 ===${NC}"
    echo -e "${GREEN}成功: $success_count ファイル${NC}"
    if [[ $fail_count -gt 0 ]]; then
        echo -e "${RED}失敗: $fail_count ファイル${NC}"
    fi
    
    # 全PDFを結合するオプション（要pdftk）
    if [[ $success_count -gt 1 ]] && command -v pdftk &> /dev/null; then
        echo ""
        read -p "全PDFを1つのファイルに結合しますか？ (y/n): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            local merged_file="$output_dir/merged_slides.pdf"
            echo -e "${BLUE}PDFを結合中...${NC}"
            pdftk "$output_dir"/*.pdf cat output "$merged_file"
            if [[ $? -eq 0 ]]; then
                echo -e "${GREEN}✓ 結合完了: $merged_file${NC}"
            fi
        fi
    fi
}

# メイン処理
main() {
    local input_file=""
    local output_file=""
    local input_dir=""
    local output_dir=""
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
    
    # 実行モード判定
    if [[ -n "$input_dir" ]]; then
        # ディレクトリ一括変換
        convert_directory "$input_dir" "$output_dir"
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