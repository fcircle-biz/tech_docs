# React + Node.js/Express + PostgreSQL 実践チュートリアル

React、Node.js/Express、PostgreSQL（Docker環境）を使用した、モダンなフルスタックWebアプリケーション開発を学ぶ実践的なチュートリアルです。Reactの基本概念であるコンポーネント、Hooks、状態管理から、REST API連携、認証機能まで、実用的なユーザー管理システムを段階的に構築しながら、Reactエコシステムの基礎から応用までを習得します。

## チュートリアル概要

### 学習目標
- React 18の基本概念と関数コンポーネントの実装
- React Hooksによるステートとライフサイクルの管理
- React Routerによるシングルページアプリケーション（SPA）の構築
- REST APIとの連携とデータフェッチング
- Context APIまたはZustandによるグローバル状態管理
- Node.js/ExpressによるバックエンドAPI開発
- PostgreSQLとの連携とデータベース操作
- Viteによる高速な開発環境の構築
- React Testing LibraryとVitestによるテスト実装
- セキュリティ対策とベストプラクティス

### 対象読者
- JavaScript/ES6+の基本知識がある方
- Webアプリケーション開発を学びたい方
- Reactを初めて学ぶ方、または基礎を固めたい方
- フロントエンドとバックエンドの連携を理解したい方
- モダンな開発手法を習得したい方

### 特徴
- **最新技術スタック**: React 18、Vite、Node.js、Express、PostgreSQL
- **段階的学習**: 基本から高度な機能まで段階的に構築
- **実践重視**: 実際に動作するユーザー管理システムを開発
- **フルスタック**: フロントエンドとバックエンドの両方を実装
- **モダンUI**: Tailwind CSSによるレスポンシブデザイン
- **テスト駆動**: React Testing Libraryによるコンポーネントテスト
- **本番環境対応**: 環境変数管理、エラーハンドリング、デプロイメント

## 前提条件・環境要件

### 必要なソフトウェア
- **Node.js**: 18.0以上（推奨: 20.x LTS）
- **npm/yarn**: パッケージマネージャー（npm推奨）
- **IDE**: Visual Studio Code（推奨）
  - ESLint Extension
  - Prettier Extension
  - ES7+ React/Redux/React-Native snippets
  - Tailwind CSS IntelliSense
- **コンテナ**: Docker Desktop（最新版）
- **バージョン管理**: Git
- **ブラウザ**: Chrome/Firefox/Edge（最新版）
- **API テストツール**: Postman または Thunder Client（VS Code拡張機能）

### 推奨する基礎知識
- HTML/CSSの基本知識
- JavaScript ES6+の文法（アロー関数、分割代入、スプレッド構文、Promise、async/await）
- HTTPプロトコルとREST APIの基本理解
- コマンドライン操作の基礎
- SQLの基本操作（SELECT、INSERT、UPDATE、DELETE）

## チュートリアル構成

### Step 1: [開発環境構築とReactプロジェクト作成](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-1.html)
- Node.jsとnpmのインストールと環境確認
- Viteを使用したReactプロジェクトの作成
- プロジェクト構造の理解とファイル構成
- VS Code拡張機能のセットアップ
- ESLintとPrettierの設定
- 開発サーバーの起動と基本的なコンポーネント作成
- JSXの基本とReactの基礎概念

**所要時間**: 1.5時間
**習得内容**: React環境構築、Vite設定、JSX基礎、コンポーネント基礎

### Step 2: [バックエンドAPI構築とPostgreSQL環境構築](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-2.html)
- Docker ComposeによるPostgreSQL環境構築
- pgAdminコンテナの設定とデータベース管理
- Node.js/Expressプロジェクトの初期化
- Express APIサーバーの基本構造
- pg（node-postgres）によるデータベース接続
- ユーザーテーブルの作成とマイグレーション
- REST APIエンドポイントの基本設計
- CORSとセキュリティ設定

**所要時間**: 2.5時間
**習得内容**: Express API構築、PostgreSQL接続、Docker環境、REST API設計

### Step 3: [Reactコンポーネントとルーティング](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-3.html)
- 関数コンポーネントの作成とProps
- React Routerのインストールと設定
- ページコンポーネントの作成（Home、UserList、UserDetail、UserForm）
- ネストされたルートと動的ルーティング
- Linkコンポーネントによるナビゲーション
- レイアウトコンポーネントの作成
- useNavigateフックによるプログラマティックナビゲーション

**所要時間**: 2.5時間
**習得内容**: コンポーネント設計、React Router、SPAナビゲーション

### Step 4: [React HooksとState管理](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-4.html)
- useStateによるローカル状態管理
- useEffectによる副作用の処理
- カスタムHooksの作成（useFetch、useForm）
- useRefによるDOM参照とフォーカス管理
- useMemoとuseCallbackによるパフォーマンス最適化
- 状態の持ち上げ（Lifting State Up）
- Reactのライフサイクルとクリーンアップ

**所要時間**: 3時間
**習得内容**: React Hooks、状態管理、カスタムHooks、パフォーマンス最適化

### Step 5: [REST API連携とデータフェッチング](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-5.html)
- Axiosのインストールと基本設定
- APIクライアントの作成とベースURL設定
- ユーザー一覧の取得と表示
- ローディング状態とエラーハンドリング
- 非同期処理のベストプラクティス
- データの再取得（Refetch）とキャッシュ戦略
- Suspenseによるローディング管理の基礎

**所要時間**: 2.5時間
**習得内容**: Axios、API連携、非同期処理、エラーハンドリング

### Step 6: [ユーザー登録機能の実装](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-6.html)
- フォームコンポーネントの作成
- 制御されたコンポーネント（Controlled Components）
- React Hook Formによるフォーム管理
- Zodによるスキーマバリデーション
- フォーム送信とPOSTリクエスト
- エラー表示とバリデーションメッセージ
- 成功時のリダイレクト処理
- トーストメッセージの実装

**所要時間**: 3時間
**習得内容**: フォーム実装、バリデーション、POST処理、ユーザーフィードバック

### Step 7: [ユーザー一覧・詳細表示機能](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-7.html)
- ユーザー一覧コンポーネントの実装
- テーブルコンポーネントの作成
- ページネーション機能の実装
- 検索・フィルター機能の追加
- URLパラメータによる動的ルーティング
- ユーザー詳細ページの作成
- データの更新と再レンダリング
- スケルトンローディングの実装

**所要時間**: 3時間
**習得内容**: リスト表示、ページネーション、検索機能、動的ルーティング

### Step 8: [ユーザー編集・削除機能](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-8.html)
- 編集フォームの実装
- 既存データの読み込みと初期値設定
- PUTリクエストによる更新処理
- 楽観的更新（Optimistic Updates）の実装
- 削除確認モーダルの作成
- DELETEリクエストによる削除処理
- useConfirmカスタムHookの作成
- トランザクション処理とロールバック

**所要時間**: 3時間
**習得内容**: CRUD完成、楽観的更新、モーダル実装、削除処理

### Step 9: [グローバル状態管理とContext API](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-9.html)
- Context APIの基本概念
- AuthContextの作成と認証状態管理
- useContextフックの活用
- UserContextによるユーザーデータ共有
- カスタムProviderコンポーネントの作成
- グローバルステートとローカルステートの使い分け
- Context最適化とメモ化
- Zustand入門（代替の状態管理ライブラリ）

**所要時間**: 3時間
**習得内容**: Context API、グローバル状態管理、認証状態管理

### Step 10: [認証機能とセキュリティ](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-10.html)
- JWT認証の実装（バックエンド）
- ログイン・ログアウト機能
- トークンの保存とAxiosインターセプター
- 保護されたルートの実装（PrivateRoute）
- 認証状態の永続化（localStorage/sessionStorage）
- トークンのリフレッシュ機能
- CSRF対策とセキュリティヘッダー
- 環境変数の安全な管理
- XSS対策とサニタイゼーション

**所要時間**: 4時間
**習得内容**: JWT認証、セキュリティ対策、保護されたルート、トークン管理

### Step 11: [UI/UXの向上とスタイリング](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-11.html)
- Tailwind CSSのインストールと設定
- レスポンシブデザインの実装
- コンポーネントライブラリの導入（Shadcn/ui または Headless UI）
- ダークモード対応
- アニメーションとトランジション（Framer Motion）
- アクセシビリティの改善（ARIA属性）
- フォームのユーザビリティ向上
- エラーバウンダリの実装

**所要時間**: 3時間
**習得内容**: Tailwind CSS、レスポンシブ、アクセシビリティ、アニメーション

### Step 12: [テスト実装とデプロイメント](https://fcircle-biz.github.io/tech_docs/tutorial/javascript-ecosystem/react/react-tutorial-12.html)
- Vitestのセットアップ
- React Testing Libraryによるコンポーネントテスト
- ユーザーインタラクションのテスト
- モックとスタブの作成
- APIモックの実装（MSW - Mock Service Worker）
- カバレッジレポートの生成
- E2Eテスト入門（Playwright）
- Vercel/Netlifyへのデプロイメント
- 環境変数の設定と管理

**所要時間**: 4時間
**習得内容**: テスト実装、E2E、CI/CD、本番デプロイ

## 環境セットアップガイド

### 1. Node.js環境の準備

```bash
# Node.jsバージョン確認（18.0以上必要）
node --version

# npmバージョン確認
npm --version

# npmのアップデート
npm install -g npm@latest
```

### 2. Reactプロジェクトの作成

```bash
# Viteを使用してReactプロジェクトを作成
npm create vite@latest user-management-frontend -- --template react

# プロジェクトディレクトリへ移動
cd user-management-frontend

# 依存関係のインストール
npm install

# 開発サーバーの起動
npm run dev
```

### 3. 追加パッケージのインストール

```bash
# React Router
npm install react-router-dom

# Axios（HTTP クライアント）
npm install axios

# React Hook Form とバリデーション
npm install react-hook-form zod @hookform/resolvers

# Tailwind CSS
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# アイコン
npm install lucide-react

# テストライブラリ
npm install -D vitest @testing-library/react @testing-library/jest-dom @testing-library/user-event jsdom
```

### 4. バックエンドプロジェクトの作成

```bash
# バックエンドディレクトリの作成
mkdir user-management-backend
cd user-management-backend

# package.jsonの初期化
npm init -y

# 必要なパッケージのインストール
npm install express pg dotenv cors bcrypt jsonwebtoken
npm install -D nodemon

# TypeScript対応（オプション）
npm install -D typescript @types/node @types/express @types/pg @types/cors @types/bcrypt @types/jsonwebtoken ts-node
```

### 5. Docker環境の準備

```yaml
# docker-compose.yml
version: '3.8'

services:
  postgres:
    image: postgres:16-alpine
    container_name: react-postgres
    environment:
      POSTGRES_USER: reactuser
      POSTGRES_PASSWORD: reactpass
      POSTGRES_DB: userdb
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data
      - ./init.sql:/docker-entrypoint-initdb.d/init.sql

  pgadmin:
    image: dpage/pgadmin4:latest
    container_name: react-pgadmin
    environment:
      PGADMIN_DEFAULT_EMAIL: admin@example.com
      PGADMIN_DEFAULT_PASSWORD: admin
    ports:
      - "5050:80"
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
docker-compose logs -f postgres
```

### 6. 初期データベーステーブルの作成

```sql
-- init.sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- サンプルデータの挿入（パスワードはハッシュ化が必要）
INSERT INTO users (username, email, password_hash, full_name, birth_date) VALUES
('admin', 'admin@example.com', '$2b$10$...', '管理者', '1990-01-01'),
('tanaka', 'tanaka@example.com', '$2b$10$...', '田中太郎', '1985-12-20'),
('yamada', 'yamada@example.com', '$2b$10$...', '山田花子', '1992-03-08');
```

## プロジェクト構成

### フロントエンド構成

```
user-management-frontend/
├── public/                   # 静的ファイル
│   └── vite.svg
├── src/
│   ├── api/                 # API通信層
│   │   ├── axios.js        # Axiosインスタンス設定
│   │   └── userApi.js      # ユーザーAPI関数
│   ├── components/          # 再利用可能なコンポーネント
│   │   ├── common/         # 共通コンポーネント
│   │   │   ├── Button.jsx
│   │   │   ├── Input.jsx
│   │   │   ├── Modal.jsx
│   │   │   └── Loading.jsx
│   │   ├── layout/         # レイアウトコンポーネント
│   │   │   ├── Header.jsx
│   │   │   ├── Footer.jsx
│   │   │   └── Layout.jsx
│   │   └── user/           # ユーザー関連コンポーネント
│   │       ├── UserCard.jsx
│   │       ├── UserTable.jsx
│   │       └── UserForm.jsx
│   ├── contexts/           # Context API
│   │   ├── AuthContext.jsx
│   │   └── UserContext.jsx
│   ├── hooks/              # カスタムHooks
│   │   ├── useAuth.js
│   │   ├── useFetch.js
│   │   ├── useForm.js
│   │   └── useModal.js
│   ├── pages/              # ページコンポーネント
│   │   ├── Home.jsx
│   │   ├── Login.jsx
│   │   ├── UserList.jsx
│   │   ├── UserDetail.jsx
│   │   ├── UserCreate.jsx
│   │   ├── UserEdit.jsx
│   │   └── NotFound.jsx
│   ├── utils/              # ユーティリティ関数
│   │   ├── validation.js
│   │   ├── formatters.js
│   │   └── constants.js
│   ├── styles/             # スタイルファイル
│   │   └── index.css
│   ├── App.jsx             # ルートコンポーネント
│   ├── main.jsx            # エントリーポイント
│   └── routes.jsx          # ルート定義
├── tests/                   # テストファイル
│   ├── components/
│   ├── hooks/
│   └── utils/
├── .env.example            # 環境変数テンプレート
├── .eslintrc.cjs          # ESLint設定
├── .prettierrc            # Prettier設定
├── index.html             # HTMLテンプレート
├── package.json           # 依存関係
├── tailwind.config.js     # Tailwind設定
├── vite.config.js         # Vite設定
└── vitest.config.js       # Vitest設定
```

### バックエンド構成

```
user-management-backend/
├── src/
│   ├── config/             # 設定ファイル
│   │   └── database.js    # データベース接続設定
│   ├── controllers/        # コントローラー
│   │   ├── authController.js
│   │   └── userController.js
│   ├── middleware/         # ミドルウェア
│   │   ├── auth.js        # 認証ミドルウェア
│   │   ├── errorHandler.js
│   │   └── validator.js
│   ├── models/            # データモデル
│   │   └── userModel.js
│   ├── routes/            # ルート定義
│   │   ├── authRoutes.js
│   │   └── userRoutes.js
│   ├── utils/             # ユーティリティ
│   │   ├── jwt.js
│   │   └── password.js
│   └── app.js             # Expressアプリケーション
├── migrations/            # データベースマイグレーション
├── seeds/                # シードデータ
├── .env.example          # 環境変数テンプレート
├── package.json          # 依存関係
└── server.js             # サーバーエントリーポイント
```

## 学習のポイント

### React基本概念

**コンポーネント**
- 関数コンポーネントを使用した再利用可能なUI部品
- PropsによるデータとPropTypes/TypeScriptによる型チェック
- コンポーネントの合成とコンポジション

**JSX**
```jsx
// JSXの基本
function UserCard({ user }) {
  return (
    <div className="user-card">
      <h2>{user.name}</h2>
      <p>{user.email}</p>
    </div>
  );
}
```

**React Hooks**
```jsx
import { useState, useEffect } from 'react';

function UserList() {
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    // データ取得
    fetchUsers().then(data => {
      setUsers(data);
      setLoading(false);
    });
  }, []);

  if (loading) return <div>Loading...</div>;

  return (
    <ul>
      {users.map(user => (
        <li key={user.id}>{user.name}</li>
      ))}
    </ul>
  );
}
```

### カスタムHooksの活用

```javascript
// hooks/useFetch.js
import { useState, useEffect } from 'react';

export function useFetch(url) {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch(url);
        const json = await response.json();
        setData(json);
      } catch (err) {
        setError(err);
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [url]);

  return { data, loading, error };
}
```

### REST API連携

```javascript
// api/userApi.js
import axios from './axios';

export const userApi = {
  // 全ユーザー取得
  getAll: (params) => axios.get('/users', { params }),

  // 特定ユーザー取得
  getById: (id) => axios.get(`/users/${id}`),

  // ユーザー作成
  create: (userData) => axios.post('/users', userData),

  // ユーザー更新
  update: (id, userData) => axios.put(`/users/${id}`, userData),

  // ユーザー削除
  delete: (id) => axios.delete(`/users/${id}`),
};
```

### バックエンドAPI実装

```javascript
// controllers/userController.js
const db = require('../config/database');

exports.getAllUsers = async (req, res) => {
  try {
    const { page = 1, limit = 10 } = req.query;
    const offset = (page - 1) * limit;

    const result = await db.query(
      'SELECT id, username, email, full_name, birth_date, created_at FROM users ORDER BY id LIMIT $1 OFFSET $2',
      [limit, offset]
    );

    res.json({
      success: true,
      data: result.rows,
      pagination: {
        page: parseInt(page),
        limit: parseInt(limit),
      },
    });
  } catch (error) {
    res.status(500).json({
      success: false,
      message: 'ユーザー取得エラー',
      error: error.message,
    });
  }
};

exports.createUser = async (req, res) => {
  try {
    const { username, email, password, fullName, birthDate } = req.body;

    // パスワードのハッシュ化
    const hashedPassword = await bcrypt.hash(password, 10);

    const result = await db.query(
      'INSERT INTO users (username, email, password_hash, full_name, birth_date) VALUES ($1, $2, $3, $4, $5) RETURNING id, username, email, full_name',
      [username, email, hashedPassword, fullName, birthDate]
    );

    res.status(201).json({
      success: true,
      data: result.rows[0],
    });
  } catch (error) {
    res.status(400).json({
      success: false,
      message: 'ユーザー作成エラー',
      error: error.message,
    });
  }
};
```

## トラブルシューティング

### よくある問題と解決方法

#### 1. CORS エラー

```javascript
// バックエンド: app.js
const cors = require('cors');

app.use(cors({
  origin: 'http://localhost:5173', // Viteのデフォルトポート
  credentials: true,
}));
```

#### 2. PostgreSQL接続エラー

```bash
# 接続文字列の確認
DATABASE_URL="postgresql://reactuser:reactpass@localhost:5432/userdb"

# Dockerコンテナの確認
docker-compose ps
docker-compose logs postgres

# コンテナの再起動
docker-compose restart postgres
```

#### 3. React Hook依存配列の警告

```javascript
// 正しい依存配列の指定
useEffect(() => {
  fetchData();
}, []); // 空配列: マウント時のみ実行

useEffect(() => {
  fetchUser(userId);
}, [userId]); // userIdが変更されたら実行
```

#### 4. 状態更新が反映されない

```javascript
// NG: 直接変更
const [users, setUsers] = useState([]);
users.push(newUser); // これはダメ

// OK: 新しい配列を作成
setUsers([...users, newUser]);
setUsers(prevUsers => [...prevUsers, newUser]);
```

#### 5. メモリリーク警告

```javascript
// コンポーネントアンマウント時のクリーンアップ
useEffect(() => {
  let isMounted = true;

  fetchData().then(data => {
    if (isMounted) {
      setData(data);
    }
  });

  return () => {
    isMounted = false; // クリーンアップ
  };
}, []);
```

## 追加学習リソース

### 公式ドキュメント
- [React公式ドキュメント（日本語）](https://ja.react.dev/)
- [React Router公式ドキュメント](https://reactrouter.com/)
- [Vite公式ドキュメント](https://vitejs.dev/)
- [Express公式ドキュメント](https://expressjs.com/)
- [PostgreSQL公式ドキュメント](https://www.postgresql.org/docs/)

### 推奨教材
- React完全ガイド
- モダンJavaScriptの基本から始める実践React開発入門
- TypeScript + React実践入門
- Node.js + Expressによるサーバーサイドプログラミング

### コミュニティ
- [React公式Discord](https://discord.com/invite/reactiflux)
- [Stack Overflow - React タグ](https://stackoverflow.com/questions/tagged/reactjs)
- [Qiita - Reactタグ](https://qiita.com/tags/react)
- [Zenn - React トピック](https://zenn.dev/topics/react)

### ツールとライブラリ
- **状態管理**: Redux Toolkit、Zustand、Jotai、Recoil
- **データフェッチング**: TanStack Query（React Query）、SWR
- **フォーム**: React Hook Form、Formik
- **スタイリング**: Tailwind CSS、styled-components、Emotion
- **UIライブラリ**: Material-UI、Chakra UI、Shadcn/ui
- **テスト**: Vitest、React Testing Library、Playwright
- **バリデーション**: Zod、Yup、Joi

## 補足事項

### パフォーマンス最適化

1. **メモ化の活用**
```javascript
import { memo, useMemo, useCallback } from 'react';

// コンポーネントのメモ化
const UserCard = memo(({ user }) => {
  return <div>{user.name}</div>;
});

// 値のメモ化
const expensiveValue = useMemo(() => {
  return computeExpensiveValue(data);
}, [data]);

// 関数のメモ化
const handleClick = useCallback(() => {
  doSomething(id);
}, [id]);
```

2. **コード分割（Code Splitting）**
```javascript
import { lazy, Suspense } from 'react';

const UserDetail = lazy(() => import('./pages/UserDetail'));

function App() {
  return (
    <Suspense fallback={<div>Loading...</div>}>
      <UserDetail />
    </Suspense>
  );
}
```

3. **仮想化（Virtualization）**
```javascript
import { FixedSizeList } from 'react-window';

function UserList({ users }) {
  return (
    <FixedSizeList
      height={600}
      itemCount={users.length}
      itemSize={50}
      width="100%"
    >
      {({ index, style }) => (
        <div style={style}>{users[index].name}</div>
      )}
    </FixedSizeList>
  );
}
```

### セキュリティベストプラクティス

1. **環境変数の管理**
```javascript
// .env.local
VITE_API_BASE_URL=http://localhost:3000/api
VITE_APP_NAME=User Management System

// 使用方法
const apiUrl = import.meta.env.VITE_API_BASE_URL;
```

2. **XSS対策**
```javascript
// Reactは自動的にエスケープするが、dangerouslySetInnerHTMLは避ける
// NG
<div dangerouslySetInnerHTML={{ __html: userInput }} />

// OK
<div>{userInput}</div>
```

3. **JWT認証の実装**
```javascript
// Axiosインターセプター
axios.interceptors.request.use(
  (config) => {
    const token = localStorage.getItem('token');
    if (token) {
      config.headers.Authorization = `Bearer ${token}`;
    }
    return config;
  },
  (error) => Promise.reject(error)
);

// トークンのリフレッシュ
axios.interceptors.response.use(
  (response) => response,
  async (error) => {
    if (error.response?.status === 401) {
      // トークンリフレッシュロジック
      const newToken = await refreshToken();
      error.config.headers.Authorization = `Bearer ${newToken}`;
      return axios(error.config);
    }
    return Promise.reject(error);
  }
);
```

### アクセシビリティ

```javascript
// セマンティックHTML
<nav aria-label="メインナビゲーション">
  <ul>
    <li><a href="/">ホーム</a></li>
    <li><a href="/users">ユーザー一覧</a></li>
  </ul>
</nav>

// フォームのラベル
<label htmlFor="username">ユーザー名</label>
<input id="username" type="text" required />

// ARIAロール
<button
  role="button"
  aria-label="ユーザー削除"
  onClick={handleDelete}
>
  削除
</button>
```

## まとめ

本チュートリアルでは、React 18とNode.js/Express、PostgreSQLを使用して、実践的なユーザー管理システムを構築します。フロントエンドからバックエンド、データベースまで一連のフルスタック開発を体験することで、モダンなWebアプリケーション開発の全体像を理解できます。

各ステップを着実に進めることで、以下のスキルが身につきます：

1. **React基礎**: コンポーネント、Hooks、状態管理、ルーティング
2. **API連携**: REST API、非同期処理、エラーハンドリング
3. **バックエンド**: Node.js/Express、データベース連携
4. **認証**: JWT、セキュリティ、保護されたルート
5. **テスト**: コンポーネントテスト、E2E、TDD
6. **デプロイ**: 本番環境構築、環境変数管理

実際に動作するアプリケーションを構築しながら、実務で必要となる知識とスキルを体系的に習得できます。Reactは現代のフロントエンド開発において最も人気のあるライブラリの一つです。このチュートリアルを通じて、その強力な機能と開発手法をマスターしてください。

Happy React Coding! 🚀
