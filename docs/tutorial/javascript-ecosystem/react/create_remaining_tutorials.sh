#!/bin/bash

# Create tutorial files 5-12

for i in {5..12}; do
  case $i in
    5) title="REST API連携とデータフェッチング"; topic="Axios、API連携、非同期処理、エラーハンドリング" ;;
    6) title="ユーザー登録機能の実装"; topic="フォーム実装、バリデーション、POST処理、ユーザーフィードバック" ;;
    7) title="ユーザー一覧・詳細表示機能"; topic="リスト表示、ページネーション、検索機能、動的ルーティング" ;;
    8) title="ユーザー編集・削除機能"; topic="CRUD完成、楽観的更新、モーダル実装、削除処理" ;;
    9) title="グローバル状態管理とContext API"; topic="Context API、グローバル状態管理、認証状態管理" ;;
    10) title="認証機能とセキュリティ"; topic="JWT認証、セキュリティ対策、保護されたルート、トークン管理" ;;
    11) title="UI/UXの向上とスタイリング"; topic="Tailwind CSS、レスポンシブ、アクセシビリティ、アニメーション" ;;
    12) title="テスト実装とデプロイメント"; topic="テスト実装、E2E、CI/CD、本番デプロイ" ;;
  esac
  
  echo "Creating react-tutorial-$i.html - $title"
done

echo "Script created successfully"
