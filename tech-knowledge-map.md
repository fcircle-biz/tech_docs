# 技術・知識マップ

IT技術、業務知識、資格試験を網羅した包括的な学習ドメインマップ

| 分類                   | 技術・知識領域                | 中核ツール／サービス／内容（抜粋）                                                                       | 主な特徴                                        |
| -------------------- | ---------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------- |
| **プログラミング言語**        | **Python**             | PyPI・Django・NumPy／Pandas                                                              | Web〜AI まで裾野が広い                              |
|                      | **Java**               | Maven Central・Spring・Jakarta EE                                                       | エンタープライズ定番、LTS 明確                           |
|                      | **JavaScript／Node.js** | npm・React／Vue・Express                                                                 | フロント & バック共通言語                              |
|                      | **.NET (C#/F#)**       | NuGet・ASP.NET Core・MAUI                                                               | クロスプラットフォーム化進行                              |
|                      | **Go**                 | Go modules・gRPC・Kubernetes 連携                                                         | クラウドネイティブ開発の定番                              |
|                      | **PHP**                | Composer・Laravel・WordPress                                                            | CMS からモダン API まで対応                          |
|                      | **Ruby**               | RubyGems・Rails・Sinatra                                                                | 開発効率とコミュニティが強み                              |
|                      | **R**                  | CRAN・tidyverse・Shiny                                                                  | 統計・データサイエンス特化                               |
|                      | **C / C++**            | GCC／Clang・CMake・Conan／vcpkg・Boost・Qt                                                  | 低レベル〜高性能アプリまで広範                             |
|                      | **COBOL**              | IBM Enterprise COBOL・Micro Focus Visual COBOL・GnuCOBOL                                | メインフレーム勘定系で根強い。モダナイゼーションが進行                 |
| **開発手法・プロセス**        | **アジャイル開発**           | Scrum・XP・Kanban・スプリント・デイリースタンドアップ・レトロスペクティブ                                           | 反復的な開発、変化への迅速な対応                            |
|                      | **ウォーターフォール開発**       | 要件定義→設計→実装→テスト→運用保守                                                                  | 段階的な開発、計画重視の伝統的手法                           |
|                      | **DevOps**             | CI/CD・Infrastructure as Code・自動化・監視・フィードバックループ                                        | 開発と運用の融合、継続的デリバリー                           |
|                      | **リーンソフトウェア開発**       | MVP・継続的改善・ムダの排除・リーンスタートアップ                                                           | 価値の最大化、学習重視                                 |
|                      | **スパイラル開発**           | リスク分析・プロトタイピング・反復開発・段階的詳細化                                                          | リスク駆動型、大規模プロジェクト向け                          |
| **設計手法・モデリング**       | **UML**                | クラス図・シーケンス図・ユースケース図・状態遷移図・コンポーネント図・配置図                                              | オブジェクト指向設計の標準表記法                            |
|                      | **ER図・データモデリング**      | 概念ER図・論理ER図・物理ER図・正規化・リレーションシップ                                                       | データベース設計の基本、データ構造の可視化                       |
|                      | **要件定義・分析**           | 要件定義書・業務フロー・機能要件・非機能要件・ユーザーストーリー                                                    | システム開発の起点、ステークホルダーとの合意形成                    |
|                      | **システム設計**            | アーキテクチャ設計・インターフェース設計・詳細設計・設計書作成                                                     | システム全体構造の決定、実装への橋渡し                         |
|                      | **DDD (ドメイン駆動設計)**    | エンティティ・値オブジェクト・集約・境界づけられたコンテキスト・ユビキタス言語                                             | 複雑なビジネスロジックのモデリング                           |
|                      | **マイクロサービス設計**        | サービス分割・API設計・分散システムパターン・イベント駆動・SAGA パターン                                             | スケーラブルで独立したサービス構成                           |
| **クラウド／インフラ**        | **AWS**                | EC2・S3・Lambda・Marketplace                                                             | サービス数＆採用実績最大級                               |
|                      | **Microsoft Azure**    | App Service・Functions・Azure AD                                                        | MS 製品との親和性◎                                 |
|                      | **Google Cloud (GCP)** | GKE・BigQuery・Cloud Run                                                                | データ分析・AI が強み                                |
|                      | **Kubernetes**         | Helm・Operator・CNCF プロジェクト                                                             | コンテナ運用の事実上標準                                |
|                      | **Docker**             | Docker Engine・Docker Desktop・Docker Compose・BuildKit・Docker Hub／Registry・Docker Swarm | コンテナの作成〜共有を一気通貫。開発から本番まで同一イメージを持ち運べるデファクト標準 |
| **OS／デバイス**          | **Linux**              | 各種ディストリ・OCI コンテナ                                                                      | サーバ／組込みで幅広い                                 |
|                      | **Android**            | AOSP・Google Play                                                                      | スマホ最大シェア、OEM 多様                             |
|                      | **Apple (iOS/macOS)**  | App Store・SwiftUI・Xcode                                                               | ハード／ソフト一体設計                                 |
| **データ／AI**           | **Hadoop／Spark**       | HDFS・Hive・Flink                                                                       | 大規模バッチ／ストリーム処理                              |
|                      | **TensorFlow**         | Keras・TF Serving・TF Lite                                                              | 産業用途で成熟                                     |
|                      | **PyTorch**            | Lightning・TorchVision                                                                 | 研究コミュニティ寄り                                  |
|                      | **統計学**              | statsmodels・SciPy・Stata                                                               | 記述統計・推測統計・仮説検定の基礎                           |
|                      | **機械学習**             | scikit-learn・XGBoost・LightGBM・CatBoost                                                | 古典的ML手法の実装、勾配ブースティング                        |
|                      | **SAS**                | Viya・SAS Studio・Visual Analytics                                                      | 高信頼の統計解析／ML、Python・R 連携                     |
| **業務 SaaS／プラットフォーム** | **SAP**                | ABAP・HANA・Fiori                                                                       | 大企業 ERP のデファクト                              |
|                      | **Salesforce**         | Apex・Lightning・AppExchange                                                            | CRM 中心にノーコード拡張                              |
|                      | **Power Platform**     | Power Apps・Power Automate・Dataverse                                                   | Microsoft 365 連携、市民開発                       |
|                      | **Microsoft Office**   | Excel／Word／Access・VBA・Office Scripts・Power Automate Desktop                           | 業務マクロからクラウド化まで一気通貫                          |
| **資格・認定試験**          | **ITパスポート試験**         | ストラテジ系・マネジメント系・テクノロジ系                                                                 | IT基礎知識の国家試験、社会人向け入門                         |
|                      | **情報処理技術者試験**        | 基本情報・応用情報・高度試験（SC・DB・NW・PM等）                                                          | 経済産業省認定の国家試験、IT技術者の標準資格                     |
| **業務知識・ドメイン**        | **会計・財務**             | 簿記・財務諸表・管理会計・税務・IFRS／US GAAP                                                            | 企業の経営数値を扱う必須知識、ERP連携                        |
|                      | **物流・SCM**            | 在庫管理・配送最適化・WMS／TMS・需要予測                                                                 | サプライチェーン全体の効率化、IoT連携進行                      |
|                      | **人事・労務**             | 給与計算・勤怠管理・人事評価・採用管理・労働法                                                               | タレントマネジメント、HRテック進化                          |
|                      | **製造・生産管理**           | MES・QMS・工程管理・設備保全・IoT／FA                                                                 | 製造業のデジタル化、スマートファクトリー                        |
|                      | **販売・マーケティング**        | 売上分析・顧客管理・MA・デジタルマーケティング                                                               | データドリブンな営業・マーケ活動                            |
