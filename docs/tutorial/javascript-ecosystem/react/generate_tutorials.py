#!/usr/bin/env python3

tutorials = {
    5: {
        "title": "REST API連携とデータフェッチング",
        "topics": ["Axiosのインストールと基本設定", "APIクライアントの作成", "ユーザー一覧の取得と表示", "ローディング状態とエラーハンドリング", "非同期処理のベストプラクティス"],
        "prev": 4,
        "next": 6
    },
    6: {
        "title": "ユーザー登録機能の実装",
        "topics": ["フォームコンポーネントの作成", "React Hook Formによるフォーム管理", "Zodによるスキーマバリデーション", "POSTリクエストの実装", "トーストメッセージの実装"],
        "prev": 5,
        "next": 7
    },
    7: {
        "title": "ユーザー一覧・詳細表示機能",
        "topics": ["ユーザー一覧コンポーネントの実装", "ページネーション機能の実装", "検索・フィルター機能の追加", "ユーザー詳細ページの作成", "スケルトンローディングの実装"],
        "prev": 6,
        "next": 8
    },
    8: {
        "title": "ユーザー編集・削除機能",
        "topics": ["編集フォームの実装", "PUTリクエストによる更新処理", "楽観的更新の実装", "削除確認モーダルの作成", "DELETEリクエストによる削除処理"],
        "prev": 7,
        "next": 9
    },
    9: {
        "title": "グローバル状態管理とContext API",
        "topics": ["Context APIの基本概念", "AuthContextの作成と認証状態管理", "useContextフックの活用", "UserContextによるデータ共有", "Context最適化とメモ化"],
        "prev": 8,
        "next": 10
    },
    10: {
        "title": "認証機能とセキュリティ",
        "topics": ["JWT認証の実装", "ログイン・ログアウト機能", "Axiosインターセプターの設定", "保護されたルートの実装", "トークンのリフレッシュ機能"],
        "prev": 9,
        "next": 11
    },
    11: {
        "title": "UI/UXの向上とスタイリング",
        "topics": ["Tailwind CSSのインストールと設定", "レスポンシブデザインの実装", "ダークモード対応", "アニメーションとトランジション", "アクセシビリティの改善"],
        "prev": 10,
        "next": 12
    },
    12: {
        "title": "テスト実装とデプロイメント",
        "topics": ["Vitestのセットアップ", "React Testing Libraryによるコンポーネントテスト", "APIモックの実装（MSW）", "E2Eテスト入門（Playwright）", "Vercel/Netlifyへのデプロイメント"],
        "prev": 11,
        "next": None
    }
}

print("Tutorial structure defined")
for num, data in tutorials.items():
    print(f"  {num}: {data['title']}")
