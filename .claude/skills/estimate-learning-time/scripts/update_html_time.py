#!/usr/bin/env python3
"""
HTMLファイルの推奨時間・目安時間を更新するスクリプト

使用方法:
    python update_html_time.py --dir <HTMLディレクトリ> --total <合計時間> [--times <JSON形式の個別時間>]

例:
    # 合計時間のみ更新
    python update_html_time.py --dir docs/guide/web-technologies/html-css --total "約8〜12時間"

    # 合計時間と個別時間を更新
    python update_html_time.py --dir docs/guide/web-technologies/html-css --total "約8〜12時間" \
        --times '{"01": "30分", "02": "45分", "03": "45分"}'

    # JSON形式でまとめて指定（スクリプト用）
    python update_html_time.py --json '{"dir": "docs/guide/...", "total": "約8時間", "times": {"01": "30分"}}'
"""

import argparse
import json
import re
import sys
from pathlib import Path


def update_total_time(content: str, total_time: str) -> str:
    """ヘッダーの合計推奨時間を更新"""
    # パターン: <span>推奨 約XX〜YY時間</span> または <span>推奨 約XX時間</span>
    pattern = r'(<span>推奨 )(約[^<]+)(</span>)'
    replacement = rf'\g<1>{total_time}\g<3>'
    return re.sub(pattern, replacement, content)


def update_individual_time(content: str, time_value: str) -> str:
    """章/ステップ/回の個別目安時間を更新"""
    # パターン: <i class="fas fa-clock mr-1"></i>目安: 約XX分 または 約XX時間
    pattern = r'(<i class="fas fa-clock mr-1"></i>目安: )(約[^<]+)'
    replacement = rf'\g<1>{time_value}'
    return re.sub(pattern, replacement, content)


def get_html_files(directory: Path) -> list[Path]:
    """ディレクトリ内のHTMLファイルを取得（番号順にソート）"""
    html_files = list(directory.glob("*.html"))
    # ファイル名から番号を抽出してソート
    def extract_number(path: Path) -> int:
        match = re.search(r'-(\d{2})\.html$', path.name)
        return int(match.group(1)) if match else 0
    return sorted(html_files, key=extract_number)


def update_html_file(file_path: Path, total_time: str = None, individual_time: str = None) -> bool:
    """HTMLファイルの時間を更新"""
    try:
        content = file_path.read_text(encoding='utf-8')
        original_content = content

        if total_time:
            content = update_total_time(content, total_time)

        if individual_time:
            content = update_individual_time(content, individual_time)

        if content != original_content:
            file_path.write_text(content, encoding='utf-8')
            return True
        return False
    except Exception as e:
        print(f"Error updating {file_path}: {e}", file=sys.stderr)
        return False


def main():
    parser = argparse.ArgumentParser(description='HTMLファイルの推奨時間・目安時間を更新')
    parser.add_argument('--dir', type=str, help='HTMLファイルのディレクトリパス')
    parser.add_argument('--total', type=str, help='合計推奨時間（例: 約8〜12時間）')
    parser.add_argument('--times', type=str, help='個別時間のJSON（例: {"01": "30分", "02": "45分"}）')
    parser.add_argument('--json', type=str, help='JSON形式で全パラメータを指定')
    parser.add_argument('--dry-run', action='store_true', help='実際には更新せず、対象ファイルを表示')

    args = parser.parse_args()

    # JSON形式で指定された場合
    if args.json:
        try:
            params = json.loads(args.json)
            directory = Path(params.get('dir', ''))
            total_time = params.get('total')
            times = params.get('times', {})
        except json.JSONDecodeError as e:
            print(f"Invalid JSON: {e}", file=sys.stderr)
            sys.exit(1)
    else:
        directory = Path(args.dir) if args.dir else None
        total_time = args.total
        try:
            times = json.loads(args.times) if args.times else {}
        except json.JSONDecodeError as e:
            print(f"Invalid times JSON: {e}", file=sys.stderr)
            sys.exit(1)

    if not directory or not directory.exists():
        print(f"Directory not found: {directory}", file=sys.stderr)
        sys.exit(1)

    html_files = get_html_files(directory)

    if not html_files:
        print(f"No HTML files found in {directory}", file=sys.stderr)
        sys.exit(1)

    print(f"Found {len(html_files)} HTML files in {directory}")

    updated_count = 0
    for html_file in html_files:
        # ファイル番号を抽出
        match = re.search(r'-(\d{2})\.html$', html_file.name)
        file_number = match.group(1) if match else None

        # 個別時間を取得
        individual_time = times.get(file_number) if file_number else None

        if args.dry_run:
            print(f"  Would update: {html_file.name}")
            if total_time:
                print(f"    Total: {total_time}")
            if individual_time:
                print(f"    Individual: {individual_time}")
        else:
            if update_html_file(html_file, total_time, individual_time):
                updated_count += 1
                print(f"  Updated: {html_file.name}")
                if individual_time:
                    print(f"    -> {individual_time}")

    if not args.dry_run:
        print(f"\nUpdated {updated_count}/{len(html_files)} files")


if __name__ == '__main__':
    main()
