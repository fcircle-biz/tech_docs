# Spring AI + Ollama + Qwen3 AIチャットアプリケーション実践チュートリアル

Spring AIフレームワークとOllama、Qwen3大規模言語モデルを使用した、モダンなAI対話型Webアプリケーション開発を学ぶ実践的なチュートリアルです。Docker環境でOllamaを構築し、Spring Bootアプリケーションから簡単にLLMを活用する方法を段階的に習得します。JavaScriptなしのサーバーサイドレンダリングで実装する、シンプルかつ実用的なAIチャットシステムの構築を通じて、Spring AIの基礎と実装パターンを学びます。

## チュートリアル概要

### 学習目標
- Spring AIフレームワークの基本概念と統合方法
- Ollamaを使用したローカルLLM環境の構築と管理
- Qwen3大規模言語モデルの導入と活用
- Spring BootとSpring AIの連携実装
- Docker Composeによる複数コンテナの統合管理
- サーバーサイドレンダリングによるAIチャットUIの実装
- Thymeleafテンプレートエンジンを使用した動的HTML生成
- プロンプトエンジニアリングの基礎（system/userプロンプト）

### 対象読者
- Javaの基本文法を理解している方（Spring Boot経験者推奨）
- AI/LLMアプリケーション開発に興味がある方
- Spring Frameworkの基礎知識がある方
- Dockerの基本操作ができる方
- 最新のAI技術をWebアプリケーションに統合したい方

### 特徴
- **最新技術スタック**: Spring Boot 3.4.0、Spring AI 1.0.0-M6、Qwen3:7b
- **ローカル実行**: Ollamaによる完全なオンプレミスAI環境
- **シンプル設計**: JavaScript不要、サーバーサイドレンダリングのみ
- **段階的構築**: 基本的なSpring Bootアプリから始めて機能を追加
- **実践重視**: 動作する実用的なAIチャットアプリケーションを構築
- **Docker統合**: docker-compose一発で全環境が起動する自動化設定
- **コスト不要**: 外部APIキー不要、完全にローカルで動作

## 前提条件・環境要件

### 必要なソフトウェア
- **JDK**: Java Development Kit 17以上（推奨: JDK 17 LTS）
- **IDE**: Visual Studio Code（推奨）
  - Extension Pack for Java
  - Spring Boot Extension Pack
  - Docker Extension
  - Gradle Extension Pack
- **ビルドツール**: Gradle 7.6以上（Gradle Wrapperを使用）
- **コンテナ**: Docker Desktop（最新版）
  - Docker Engine 20.10以上
  - Docker Compose V2対応
- **バージョン管理**: Git
- **OS**: Linux/Windows/Mac（Docker対応環境）

### ハードウェア要件
- **RAM**: 最低8GB（推奨: 16GB以上）
  - Qwen3:7bモデルは約4GBのメモリを使用
- **ストレージ**: 空き容量10GB以上
  - Ollamaモデルダウンロード用
- **CPU**: マルチコアプロセッサ推奨
  - LLM推論にはCPUパワーが必要

### 推奨する基礎知識
- Javaの基本文法（クラス、メソッド、アノテーション）
- Spring Bootの基礎（依存性注入、自動設定）
- HTMLの基本知識
- Dockerの基本操作（docker run、docker-compose）
- RESTful APIの基本概念
- LLM（大規模言語モデル）の基本的な理解

## チュートリアル構成

### Step 1: [環境構築とプロジェクト作成](https://fcircle-biz.github.io/tech_docs/tutorial/java-ecosystem/spring-ai/step1-environment-setup.html)
- JDK 17のインストールと環境変数設定
- Visual Studio Codeのセットアップと必要な拡張機能
- Docker Desktopのインストールと動作確認
- Gradleプロジェクトの作成（Groovy DSL）
- build.gradleの設定（Spring Boot 3.4.0、Spring AI BOM 1.0.0-M6）
- 必要な依存関係の追加（web、thymeleaf、spring-ai-ollama）
- Hello Worldアプリケーションの作成と実行

**所要時間**: 2時間
**習得内容**: Java開発環境構築、Gradleビルド、Spring Bootプロジェクト初期化

### Step 2: [Spring AIとOllamaの統合設定](https://fcircle-biz.github.io/tech_docs/tutorial/java-ecosystem/spring-ai/step2-spring-ai-ollama-integration.html)
- Spring AIフレームワークの概要と仕組み
- spring-ai-ollama-spring-boot-starterの設定
- application.ymlでのOllama接続設定
- ChatClientインターフェースの理解
- 基本的なプロンプト送信とレスポンス取得
- システムプロンプトとユーザープロンプトの違い
- エラーハンドリングと接続確認

**所要時間**: 2.5時間
**習得内容**: Spring AI基礎、Ollama統合、ChatClient使用方法

### Step 3: [チャット機能の実装](https://fcircle-biz.github.io/tech_docs/tutorial/java-ecosystem/spring-ai/step3-chat-implementation.html)
- ChatControllerの作成（@Controller）
- GETリクエストハンドラ（初期画面表示）
- POSTリクエストハンドラ（チャット送信処理）
- ChatFormオブジェクトの作成とバリデーション
- @NotBlankバリデーションの実装
- ChatClientを使用したAI応答取得
- プロンプトエンジニアリングの基礎
- 同期処理によるシンプルな実装（WebFlux不使用）

**所要時間**: 3時間
**習得内容**: Springコントローラー実装、フォーム処理、AI統合

### Step 4: [Thymeleafビューの作成](https://fcircle-biz.github.io/tech_docs/tutorial/java-ecosystem/spring-ai/step4-thymeleaf-view.html)
- Thymeleafテンプレートエンジンの設定
- index.htmlテンプレートの作成
- Bootstrap 5.3.3（CDN）の統合
- テキストエリア入力フォームの実装
- Thymeleaf式言語（th:text、th:if）の活用
- フォーム送信とバリデーションエラー表示
- AI応答の整形表示（preタグ使用）
- レスポンシブデザインの適用
- JavaScript不使用のサーバーサイドレンダリング

**所要時間**: 2.5時間
**習得内容**: Thymeleafテンプレート、Bootstrap統合、フォームUI実装

### Step 5: [Dockerコンテナ化](https://fcircle-biz.github.io/tech_docs/tutorial/java-ecosystem/spring-ai/step5-docker-containerization.html)
- マルチステージDockerfileの作成
- ビルドステージ（Gradle）の設定
- ランタイムステージ（JRE）の最適化
- アプリケーションJARのビルドと実行
- Dockerイメージのビルドと動作確認
- イメージサイズの最適化テクニック
- ヘルスチェックエンドポイントの実装

**所要時間**: 2時間
**習得内容**: Docker基礎、マルチステージビルド、コンテナ化ベストプラクティス

### Step 6: [docker-composeによる統合環境構築](https://fcircle-biz.github.io/tech_docs/tutorial/java-ecosystem/spring-ai/step6-docker-compose-integration.html)
- docker-compose.ymlの作成と設定
- ollamaサービスの定義と設定
- Qwen3:7bモデルの自動pull設定
- appサービス（Spring Boot）の定義
- サービス間の依存関係設定（depends_on）
- ヘルスチェックによる起動順序制御
- ネットワーク設定とサービス間通信
- ボリュームマウントとデータ永続化
- 環境変数の管理と設定
- docker-compose up一発での全環境起動

**所要時間**: 3時間
**習得内容**: Docker Compose、マルチコンテナ管理、サービス連携

### Step 7: [動作確認とトラブルシューティング](https://fcircle-biz.github.io/tech_docs/tutorial/java-ecosystem/spring-ai/step7-operation-troubleshooting.html)
- docker-composeでの全体起動と確認
- Ollamaモデルpullの確認方法
- Spring Bootアプリケーションのログ確認
- AIチャットアプリケーションの動作テスト
- よくあるエラーとその対処法
  - Ollamaモデルが見つからない場合
  - メモリ不足エラーの対応
  - コンテナ起動順序の問題
  - ネットワーク接続エラー
- パフォーマンスチューニング
- ログレベルの調整とデバッグ方法
- 本番環境への展開準備

**所要時間**: 2時間
**習得内容**: トラブルシューティング、デバッグ手法、運用ノウハウ

## 作成するアプリケーション

### システム概要
シンプルなAI対話型Webアプリケーション
- テキストエリアに質問を入力
- 送信ボタンクリックでAIが回答を生成
- 同一ページに回答が表示される1ページ完結型
- Qwen3大規模言語モデルを使用した自然な日本語対話

### 主な機能
1. **AIチャット機能**
   - ユーザーからの質問入力（textarea）
   - AI（Qwen3:7b）による回答生成
   - 回答の整形表示（preタグで改行保持）
   - 同一ページでのリアルタイム表示

2. **技術的特徴**
   - サーバーサイドレンダリング（JavaScript不使用）
   - 同期処理による簡潔な実装
   - Bootstrap 5によるレスポンシブデザイン
   - フォームバリデーション（空白チェック）
   - Docker Composeによる自動環境構築

### プロジェクト構造
```
ai-chat/
├── build.gradle              # Gradleビルド設定
├── settings.gradle           # Gradleプロジェクト設定
├── Dockerfile                # Spring Bootアプリコンテナ定義
├── docker-compose.yml        # マルチコンテナ統合設定
└── src/main/
    ├── java/com/example/aichat/
    │   ├── AiChatApplication.java    # メインクラス
    │   ├── ChatController.java        # チャットコントローラー
    │   └── ChatForm.java              # フォームオブジェクト
    └── resources/
        ├── application.yml            # アプリケーション設定
        └── templates/
            └── index.html             # チャット画面テンプレート
```

### 使用技術スタック
- **言語・フレームワーク**: Java 17、Spring Boot 3.4.0
- **AI統合**: Spring AI 1.0.0-M6、spring-ai-ollama-spring-boot-starter
- **LLMプロバイダー**: Ollama、Qwen3:7b（7Bパラメータモデル）
- **テンプレートエンジン**: Thymeleaf
- **CSSフレームワーク**: Bootstrap 5.3.3（CDN）
- **ビルドツール**: Gradle 7.6+（Groovy DSL）
- **コンテナ**: Docker、Docker Compose
- **バリデーション**: Spring Validation（Bean Validation）

## 学習のポイント

### Spring AIの利点
- **統一インターフェース**: 複数のLLMプロバイダー（OpenAI、Ollama、Azure OpenAIなど）を統一的に扱える
- **Spring Boot統合**: 自動設定により最小限の設定でAI機能を組み込み可能
- **プロンプト管理**: システムプロンプトとユーザープロンプトの明確な分離
- **型安全**: Javaの型システムによる安全なAI統合
- **拡張性**: カスタムプロバイダーの追加が容易

### Ollamaの特徴
- **ローカル実行**: インターネット接続不要、完全なオンプレミス環境
- **コスト不要**: 外部APIキー不要、無料で使用可能
- **プライバシー保護**: データが外部に送信されない
- **モデル管理**: 簡単なコマンドでモデルのダウンロードと切り替え
- **Docker対応**: コンテナ環境で簡単に構築可能

### Qwen3の特徴
- **最新モデル**: Alibaba Cloudが開発した高性能LLM
- **日本語対応**: 日本語を含む多言語対応
- **7Bパラメータ**: 個人PCでも動作する適度なサイズ
- **高品質な応答**: GPT-3.5レベルの性能

### 実装パターン
- **シンプル設計**: JavaScript不使用、サーバーサイドのみで完結
- **同期処理**: WebFluxなしの従来型Webアプリケーション
- **1ページ完結**: ページ遷移なしのシンプルなUX
- **Docker統合**: docker-compose up一発で全環境が起動

## 次のステップ

このチュートリアル完了後の学習推奨事項：

1. **ストリーミング対応**: Spring WebFluxによるリアルタイムストリーミング実装
2. **RAG（Retrieval-Augmented Generation）**: ベクトルデータベースとの統合
3. **チャット履歴管理**: 会話履歴の保存と参照機能
4. **マルチモーダル対応**: 画像やファイルの入力対応
5. **LangChain4j統合**: より高度なLLMアプリケーションフレームワークの活用
6. **プロンプトテンプレート**: 複雑なプロンプトの管理と再利用
7. **認証・認可**: Spring Securityによるユーザー管理
8. **本番デプロイ**: Kubernetes環境へのデプロイ
9. **モニタリング**: Spring Boot Actuatorによる運用監視
10. **パフォーマンス最適化**: キャッシング、非同期処理の導入

## リソース・参考資料

### 公式ドキュメント
- [Spring AI公式ドキュメント](https://docs.spring.io/spring-ai/reference/)
- [Spring AI GitHub](https://github.com/spring-projects/spring-ai)
- [Ollama公式サイト](https://ollama.com/)
- [Ollama GitHub](https://github.com/ollama/ollama)
- [Qwen3モデル情報](https://ollama.com/library/qwen3)
- [Spring Boot公式ドキュメント](https://spring.io/projects/spring-boot)
- [Thymeleaf公式ドキュメント](https://www.thymeleaf.org/)
- [Docker公式ドキュメント](https://docs.docker.com/)

### Spring AIチュートリアル
- [Spring AI Getting Started](https://docs.spring.io/spring-ai/reference/getting-started.html)
- [Spring AI Ollama Integration](https://docs.spring.io/spring-ai/reference/api/chat/ollama-chat.html)

### コミュニティ
- [Spring Community Forums](https://spring.io/community)
- [Ollama Discord](https://discord.gg/ollama)
- [Stack Overflow - spring-ai tag](https://stackoverflow.com/questions/tagged/spring-ai)

## サポート

### トラブルシューティング
各ステップのトラブルシューティングセクションを参照してください。特にStep 7では、よくある問題とその解決方法を詳しく解説しています。

### よくある質問

**Q: Ollamaモデルのダウンロードに時間がかかる**
A: Qwen3:7bモデルは約4GBのサイズがあります。初回起動時には10-30分程度かかることがあります。ネットワーク速度に依存します。

**Q: メモリ不足エラーが発生する**
A: Qwen3:7bは最低8GBのRAMが必要です。他のアプリケーションを終了するか、より小さいモデル（例: qwen3:3b）を使用してください。

**Q: AIの応答が遅い**
A: CPUでの推論は時間がかかります。GPUがあればOllamaのGPU対応版を使用することで高速化できます。

**Q: 日本語の応答品質が低い**
A: システムプロンプトで「日本語で回答してください」と明示的に指示することで改善できます。

**Q: 他のLLMモデルを使用したい**
A: application.ymlのmodel設定を変更するだけで、Ollamaがサポートする他のモデル（llama3、mistral、gemmaなど）を使用できます。

### サポートチャンネル
- Spring AIの問題: [Spring GitHub Issues](https://github.com/spring-projects/spring-ai/issues)
- Ollamaの問題: [Ollama GitHub Issues](https://github.com/ollama/ollama/issues)
- 一般的な質問: Stack Overflowで「spring-ai」タグを使用

## まとめ

このチュートリアルを完了することで、以下のスキルが身につきます：

1. **Spring AI基礎**: Spring AIフレームワークの基本概念と実装方法
2. **LLM統合**: Ollamaを使用したローカルLLM環境の構築と活用
3. **AIアプリケーション開発**: 実用的なAI対話型Webアプリケーションの実装
4. **Docker活用**: マルチコンテナアプリケーションの構築と管理
5. **プロンプトエンジニアリング**: 効果的なプロンプト設計の基礎
6. **サーバーサイドレンダリング**: ThymeleafによるシンプルなUI実装

Spring AIは、JavaエコシステムにおけるAI統合の標準的なアプローチとして急速に普及しています。このチュートリアルを通じて、最新のAI技術を既存のSpring Bootアプリケーションに統合する実践的なスキルを習得してください。

Ollamaとローカルモデルを使用することで、外部APIキーなしで、プライバシーを保ちながらAI機能を開発できます。これは、企業内システムや個人プロジェクトにおいて非常に価値のあるアプローチです。

Happy AI Coding with Spring! 🤖🚀
