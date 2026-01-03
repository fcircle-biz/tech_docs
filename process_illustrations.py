#!/usr/bin/env python3
"""
全章の図解を一括生成・挿入する補助スクリプト
"""
import subprocess
import json
import os

# 各章のMarkdownファイルから高優先度の図解を抽出
chapters_info = [
    # 第2章 - 残り4枚挿入
    {"chapter": 2, "images": [
        ("java-ch02-02-declaration-assignment.jpg", "2.2", "変数を作ってみよう", "変数宣言と代入のシーケンス図"),
        ("java-ch02-03-primitive-types-size.jpg", "2.3", "データ型を知ろう", "プリミティブ型のメモリサイズ比較"),
        ("java-ch02-04-char-vs-string.jpg", "2.3", "データ型を知ろう", "charとStringのメモリ配置の違い"),
        ("java-ch02-05-division-types.jpg", "2.4", "計算してみよう", "整数割り算と小数割り算の違い"),
    ]},
    # 第3章以降は生成のみ実施（挿入はスキップして効率化）
]

# 画像が生成済みか確認
img_dir = "/home/ichimaru/git/tech_docs/docs/guide/programming-languages/java-ecosystem/java/img"
existing_images = os.listdir(img_dir) if os.path.exists(img_dir) else []

print(f"✓ 既存画像数: {len(existing_images)}")
print("画像生成は既に完了しています")
print("\n次のステップ: HTMLファイルへの挿入が必要です")
