# Next.js 実践チュートリアル

Next.js 14のApp RouterとServer Components、TypeScript、Prisma ORM、PostgreSQL（Docker環境）を使用した、モダンなフルスタックWebアプリケーション開発を学ぶ実践的なチュートリアルです。Server ActionsやStreaming SSR、ISRなどの最新機能を活用しながら、実用的なユーザー管理システムを段階的に構築し、Next.jsエコシステムの基礎から応用までを習得します。

## チュートリアル概要

### 学習目標
- Next.js 14 App Routerの基本概念と実装方法
- React Server ComponentsとClient Componentsの使い分け
- Server Actionsによるサーバーサイド処理の実装
- TypeScriptを使用した型安全な開発
- Prisma ORMによるデータベースアクセスの実装
- Docker環境でのPostgreSQL構築と管理
- Tailwind CSSによるモダンなUI構築
- 認証・認可機能の基本実装
- Vercelへのデプロイメントプロセス

### 対象読者
- React/JavaScriptの基本知識がある方
- フルスタックWebアプリケーション開発を学びたい方
- Next.jsの最新機能を活用したい方
- TypeScriptでの開発に興味がある方
- モダンな開発手法を習得したい方

### 特徴
- **最新技術スタック**: Next.js 14、TypeScript、Prisma、PostgreSQL
- **段階的学習**: 基本から高度な機能まで段階的に構築
- **実践重視**: 実際に動作するユーザー管理システムを開発
- **型安全性**: TypeScriptによる型安全な実装
- **パフォーマンス重視**: Server Components、Streaming SSR活用
- **モダンUI**: Tailwind CSS、shadcn/uiによるUI構築
- **本番環境対応**: Vercelデプロイメント、環境変数管理

## 前提条件・環境要件

### 必要なソフトウェア
- **Node.js**: 18.17以上（推奨: 20.x LTS）
- **npm/pnpm**: パッケージマネージャー（pnpm推奨）
- **IDE**: Visual Studio Code（推奨）
  - ESLint Extension
  - Prettier Extension
  - Tailwind CSS IntelliSense
  - Prisma Extension
- **コンテナ**: Docker Desktop（最新版）
- **バージョン管理**: Git
- **ブラウザ**: Chrome/Firefox/Edge（最新版）

### 推奨する基礎知識
- HTML/CSS/JavaScriptの基本知識
- Reactの基本概念（コンポーネント、Props、State）
- 非同期処理の基本（Promise、async/await）
- HTTPプロトコルの基本理解
- SQLの基本操作

## チュートリアル構成

### Step 1: [開発環境構築とNext.jsプロジェクト作成](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs/step1-environment-setup.html)
- Node.jsとpnpmのインストール
- create-next-appによるプロジェクト作成
- TypeScript設定とプロジェクト構造の理解
- VS Code拡張機能のセットアップ
- Tailwind CSSの設定とカスタマイズ
- 開発サーバーの起動と基本的なページ作成
- App Routerの基本概念とファイルベースルーティング

**所要時間**: 1.5時間
**習得内容**: Next.js環境構築、プロジェクト構造、App Router基礎

### Step 2: [DockerでPostgreSQL環境構築とPrisma設定](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs/step2-database-setup.html)
- Docker Composeファイルの作成
- PostgreSQLコンテナの起動と管理
- Adminerによるデータベース管理UI設定
- Prisma ORMのインストールと初期設定
- スキーマ定義とマイグレーション
- Prisma Clientの生成と型定義
- Prisma Studioによるデータ管理

**所要時間**: 2時間
**習得内容**: Docker環境構築、Prisma ORM設定、データベース設計

### Step 3: [Server ComponentsとClient Components](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs/step3-components-architecture.html)
- Server Componentsの概念と利点
- Client Componentsの使用場面
- コンポーネントの境界設計
- データフェッチングパターン
- Suspenseとローディング状態
- エラーハンドリング（error.tsx、not-found.tsx）
- レイアウトとネストされたルーティング

**所要時間**: 2.5時間
**習得内容**: RSC/RCC理解、データフェッチング、エラー処理

### Step 4: [ユーザーモデル設計とCRUD基盤構築](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs/step4-user-model-crud.html)
- Prismaスキーマでのユーザーモデル定義
- データベースマイグレーションの実行
- Server Actionsの基本実装
- データアクセス層の構築
- 型安全なAPI設計
- エラーハンドリングとバリデーション
- シードデータの投入

**所要時間**: 3時間
**習得内容**: Prismaモデル設計、Server Actions、データアクセス層

### Step 5: [ユーザー登録機能の実装](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs/step5-user-registration.html)
- 登録フォームコンポーネントの作成
- react-hook-formによるフォーム管理
- Zodによるスキーマバリデーション
- Server Actionでの登録処理
- フォーム送信とローディング状態
- エラー表示とユーザーフィードバック
- 成功時のリダイレクト処理

**所要時間**: 3時間
**習得内容**: フォーム実装、バリデーション、Server Actions活用

### Step 6: [ユーザー一覧・詳細表示機能](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs/step6-user-list-detail.html)
- ユーザー一覧ページの実装
- テーブルコンポーネントの作成
- ページネーションの実装
- 検索・フィルター機能
- 動的ルーティングによる詳細ページ
- Suspenseによるストリーミングレンダリング
- キャッシュ戦略とrevalidate

**所要時間**: 3時間
**習得内容**: データ表示、ページネーション、動的ルーティング

### Step 7: [ユーザー編集・削除機能](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs/step7-user-update-delete.html)
- 編集フォームの実装
- 既存データの読み込みと表示
- 楽観的更新（Optimistic Updates）
- 削除確認モーダルの実装
- Server Actionでの更新・削除処理
- トランザクション処理
- リアルタイムバリデーション

**所要時間**: 3時間
**習得内容**: CRUD完成、楽観的更新、トランザクション処理

### Step 8: [認証機能とセキュリティ](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs/step8-authentication-security.html)
- NextAuth.jsの導入と設定
- ログイン・ログアウト機能
- セッション管理
- ミドルウェアによるルート保護
- CSRFトークンの実装
- 環境変数の安全な管理
- Rate Limitingの実装

**所要時間**: 4時間
**習得内容**: 認証実装、セキュリティ対策、ミドルウェア活用

### Step 9: [UI/UXの向上とアクセシビリティ](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs/step9-ui-ux-improvement.html)
- shadcn/uiコンポーネントの導入
- レスポンシブデザインの実装
- ダークモード対応
- アニメーションとトランジション
- アクセシビリティの改善
- 国際化（i18n）の基本設定
- パフォーマンス最適化

**所要時間**: 3時間
**習得内容**: UI改善、アクセシビリティ、パフォーマンス最適化

### Step 10: [テスト実装とデプロイメント](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/nextjs/step10-testing-deployment.html)
- Jestによる単体テスト
- React Testing Libraryによるコンポーネントテスト
- Playwrightによる E2Eテスト
- GitHub Actionsによる CI/CD設定
- Vercelへのデプロイメント
- 環境変数の設定と管理
- 本番環境のモニタリング

**所要時間**: 4時間
**習得内容**: テスト実装、CI/CD構築、本番デプロイ

## 環境セットアップガイド

### 1. Node.js環境の準備

```bash
# Node.jsバージョン確認（18.17以上必要）
node --version

# pnpmのインストール（推奨）
npm install -g pnpm

# pnpmバージョン確認
pnpm --version
```

### 2. プロジェクトの作成

```bash
# Next.jsプロジェクトの作成
pnpm create next-app@latest user-management-app --typescript --tailwind --app

# プロジェクトディレクトリへ移動
cd user-management-app

# 開発サーバーの起動
pnpm dev
```

### 3. Docker環境の準備

```yaml
# docker-compose.yml
version: '3.8'

services:
  postgres:
    image: postgres:16-alpine
    container_name: nextjs-postgres
    environment:
      POSTGRES_USER: nextuser
      POSTGRES_PASSWORD: nextpass
      POSTGRES_DB: userdb
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data

  adminer:
    image: adminer:latest
    container_name: nextjs-adminer
    ports:
      - "8080:8080"
    depends_on:
      - postgres

volumes:
  postgres_data:
```

```bash
# Dockerコンテナの起動
docker-compose up -d

# コンテナの状態確認
docker-compose ps

# ログの確認
docker-compose logs -f
```

### 4. Prismaの初期設定

```bash
# Prismaのインストール
pnpm add prisma @prisma/client

# Prismaの初期化
pnpm dlx prisma init

# スキーマファイルの編集後、マイグレーション実行
pnpm dlx prisma migrate dev --name init

# Prisma Studioの起動
pnpm dlx prisma studio
```

## プロジェクト構成

```
user-management-app/
├── app/                      # App Routerディレクトリ
│   ├── layout.tsx           # ルートレイアウト
│   ├── page.tsx            # ホームページ
│   ├── globals.css         # グローバルスタイル
│   ├── users/              # ユーザー管理機能
│   │   ├── page.tsx       # ユーザー一覧
│   │   ├── new/          # 新規登録
│   │   │   └── page.tsx
│   │   ├── [id]/         # 動的ルート
│   │   │   ├── page.tsx  # ユーザー詳細
│   │   │   └── edit/     # 編集ページ
│   │   │       └── page.tsx
│   │   └── actions.ts    # Server Actions
│   ├── api/               # APIルート（必要に応じて）
│   └── components/        # 共通コンポーネント
│       ├── ui/           # UIコンポーネント
│       └── forms/        # フォームコンポーネント
├── prisma/
│   ├── schema.prisma     # Prismaスキーマ
│   └── seed.ts          # シードデータ
├── lib/                  # ユーティリティ関数
│   ├── prisma.ts        # Prismaクライアント
│   └── validations.ts   # バリデーション
├── public/              # 静的ファイル
├── tests/               # テストファイル
├── docker-compose.yml   # Docker設定
├── .env.local          # 環境変数
├── next.config.js      # Next.js設定
├── tailwind.config.ts  # Tailwind設定
├── tsconfig.json       # TypeScript設定
└── package.json        # 依存関係

```

## 学習のポイント

### Server Components vs Client Components

**Server Components（デフォルト）**
- サーバーでレンダリング
- データフェッチが高速
- バンドルサイズが小さい
- SEOに有利
- インタラクティブ性なし

**Client Components（'use client'）**
- ブラウザでレンダリング
- useState、useEffect使用可能
- イベントハンドラー使用可能
- ブラウザAPIアクセス可能
- インタラクティブな機能

### Server Actionsの活用

```typescript
// app/users/actions.ts
'use server'

import { prisma } from '@/lib/prisma'
import { revalidatePath } from 'next/cache'

export async function createUser(formData: FormData) {
  const username = formData.get('username') as string
  const email = formData.get('email') as string
  const fullName = formData.get('fullName') as string

  await prisma.user.create({
    data: {
      username,
      email,
      fullName,
    },
  })

  revalidatePath('/users')
}
```

### Prismaによるデータアクセス

```typescript
// lib/prisma.ts
import { PrismaClient } from '@prisma/client'

const globalForPrisma = global as unknown as {
  prisma: PrismaClient | undefined
}

export const prisma =
  globalForPrisma.prisma ??
  new PrismaClient({
    log: ['query'],
  })

if (process.env.NODE_ENV !== 'production')
  globalForPrisma.prisma = prisma
```

## トラブルシューティング

### よくある問題と解決方法

#### 1. PostgreSQL接続エラー
```bash
# 接続文字列の確認
DATABASE_URL="postgresql://nextuser:nextpass@localhost:5432/userdb"

# Dockerコンテナの確認
docker-compose ps
docker-compose restart postgres
```

#### 2. Prismaマイグレーションエラー
```bash
# スキーマの同期をリセット
pnpm dlx prisma migrate reset

# Prisma Clientの再生成
pnpm dlx prisma generate
```

#### 3. TypeScriptエラー
```bash
# 型定義の更新
pnpm dlx prisma generate

# TypeScriptのバージョン確認
pnpm list typescript
```

#### 4. Server Actionsエラー
```typescript
// 必ず'use server'を追加
'use server'

// フォームデータの正しい取得
const data = Object.fromEntries(formData.entries())
```

## 追加学習リソース

### 公式ドキュメント
- [Next.js公式ドキュメント](https://nextjs.org/docs)
- [Prisma公式ドキュメント](https://www.prisma.io/docs)
- [TypeScript公式ドキュメント](https://www.typescriptlang.org/docs/)
- [Tailwind CSS公式ドキュメント](https://tailwindcss.com/docs)

### 推奨教材
- Next.js App Router完全ガイド
- TypeScript実践入門
- Prisma ORMマスター
- React Server Components詳解

### コミュニティ
- Next.js Discord
- Prisma Slack
- TypeScript Community
- Vercel Community

## 補足事項

### パフォーマンス最適化

1. **画像最適化**
   - next/imageコンポーネントの活用
   - 適切なフォーマット選択（WebP、AVIF）

2. **フォント最適化**
   - next/fontによるフォント最適化
   - Variable Fontの活用

3. **バンドルサイズ削減**
   - Dynamic Importsの活用
   - Tree Shakingの確認

4. **キャッシュ戦略**
   - ISR（Incremental Static Regeneration）
   - On-Demand Revalidation

### セキュリティベストプラクティス

1. **環境変数管理**
   - .env.localの適切な設定
   - 秘密情報の保護

2. **入力検証**
   - サーバーサイドバリデーション
   - SQLインジェクション対策

3. **認証・認可**
   - NextAuth.jsの適切な設定
   - JWTトークンの管理

4. **HTTPS対応**
   - 本番環境でのSSL証明書
   - セキュアクッキーの設定

## まとめ

本チュートリアルでは、Next.js 14の最新機能を活用しながら、実践的なユーザー管理システムを構築します。Server Components、Server Actions、Prisma ORM、TypeScriptなどのモダンな技術スタックを使用し、開発から本番デプロイまでの一連のワークフローを習得できます。

各ステップを着実に進めることで、Next.jsを使用したフルスタックWebアプリケーション開発の基礎から応用まで、体系的に学習できるように構成されています。実際に動作するアプリケーションを構築しながら、実務で必要となる知識とスキルを身につけることができます。