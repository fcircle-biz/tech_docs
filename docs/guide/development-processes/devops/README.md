# DevOps学習ガイドライン

このガイドラインでは、DevOpsの基礎から実践的な運用まで、入門者向けに段階的に学習するためのカリキュラムを提供しています。DevOpsは開発（Development）と運用（Operations）を統合し、ソフトウェアのデリバリーを高速化・自動化する文化と実践手法です。CI/CD、インフラ自動化、コンテナオーケストレーション、モニタリングなど、モダンなソフトウェア開発・運用に不可欠な技術とプラクティスを包括的に学びます。各トピックには詳細な解説へのリンクが含まれています。

## 前提条件

### 必要な環境
- **OS**: Windows 10/11、macOS 10.15以降、または主要Linuxディストリビューション（Ubuntu 20.04/22.04、CentOS 8、Debian 11等）
- **ハードウェア**: CPU 4コア以上、メモリ8GB以上（推奨16GB以上）
- **ソフトウェア**:
  - Git 2.30以降
  - Docker Desktop（Windows/Mac）または Docker Engine（Linux）
  - テキストエディタまたはIDE（VS Code、IntelliJ IDEA等）
  - SSH クライアント
- **アカウント**:
  - GitHub アカウント
  - クラウドプロバイダーのアカウント（AWS、Azure、GCP のいずれか - 無料枠で学習可能）

### 参考リソース
- [DevOps Roadmap](https://roadmap.sh/devops) - DevOps学習ロードマップ
- [The DevOps Handbook](https://itrevolution.com/product/the-devops-handbook-second-edition/) - DevOpsの原則と実践
- [AWS DevOps Blog](https://aws.amazon.com/jp/blogs/devops/)
- [Microsoft DevOps Resource Center](https://learn.microsoft.com/ja-jp/devops/)
- [Google Cloud DevOps](https://cloud.google.com/devops)
- [CNCF Cloud Native Interactive Landscape](https://landscape.cncf.io/) - クラウドネイティブツール全体像

### 前提知識
- **必須**:
  - コマンドラインの基本操作（Bash、PowerShell、ターミナルの使用）
  - 基本的なプログラミング知識（Python、JavaScript、Java、Go のいずれか）
  - Web技術の基礎（HTTP/HTTPS、REST API、JSON）
  - Linux基本コマンド（ls、cd、grep、ps、top等）
  - Gitの基本操作（clone、commit、push、pull、branch、merge）
- **推奨**:
  - ネットワークの基礎知識（TCP/IP、DNS、ロードバランサー）
  - データベースの基礎知識（SQL、RDBMS、NoSQL）
  - サーバー管理の経験
  - YAML/JSON形式の理解
  - 仮想化技術の基本概念

## 学習コンテンツ

### [1. DevOpsの基礎と文化 - 現代的なソフトウェア開発・運用の理解](https://fcircle-biz.github.io/tech_docs/guide/development-processes/devops/devops-learning-material-1.html)
DevOpsの概念、歴史、文化的側面について学びます。DevOpsとは何か（開発と運用の統合）、DevOpsが生まれた背景（ウォーターフォール開発の課題、アジャイル開発の限界）、DevOpsの3つの道（フロー、フィードバック、継続的学習）、DevOpsがもたらすメリット（デリバリー速度の向上、品質改善、コラボレーション強化）、DevOpsの主要原則（自動化、測定、共有、継続的改善）、従来のITオペレーションとDevOpsの違い、DevOps文化の醸成方法（サイロの破壊、責任の共有、失敗から学ぶ文化）、DevOpsチームの構成と役割、主要なDevOpsツールエコシステムの概要について詳しく解説します。実際の企業でのDevOps導入事例も紹介します。

### [2. バージョン管理とGit戦略 - 効果的なコラボレーションの基盤](https://fcircle-biz.github.io/tech_docs/guide/development-processes/devops/devops-learning-material-2.html)
Gitを使った効果的なバージョン管理とブランチ戦略について学びます。Gitの基本概念の復習（リポジトリ、コミット、ブランチ、マージ）、Gitワークフローの種類（Git Flow、GitHub Flow、GitLab Flow、Trunk Based Development）、ブランチ戦略のベストプラクティス、プルリクエスト/マージリクエストのプロセス、コードレビューの重要性と実践方法、コミットメッセージの書き方規約（Conventional Commits）、.gitignoreとGit属性の活用、Git Hooks（pre-commit、pre-push）、マージコンフリクトの解決戦略、Gitタグとリリース管理、モノレポ vs マルチレポの選択、実践：チーム開発シミュレーション（フィーチャーブランチ、レビュー、マージ）について解説します。効果的なチーム開発の基盤を構築できます。

### [3. CI/CD基礎 - 継続的インテグレーションとデリバリー](https://fcircle-biz.github.io/tech_docs/guide/development-processes/devops/devops-learning-material-3.html)
CI/CDの概念と基本的なパイプライン構築について学びます。CI/CDとは何か（継続的インテグレーション、継続的デリバリー、継続的デプロイメントの違い）、CI/CDがもたらすメリット（早期バグ発見、デプロイ頻度の向上、リスク削減）、CI/CDパイプラインの構成要素（ソース、ビルド、テスト、デプロイ）、主要なCI/CDツール（GitHub Actions、GitLab CI/CD、Jenkins、CircleCI、Travis CI）、GitHub Actionsの基礎（ワークフロー、ジョブ、ステップ、アクション）、YAML設定ファイルの記述方法、基本的なビルドパイプラインの作成、自動テストの統合（ユニットテスト、インテグレーションテスト）、ビルドアーティファクトの管理、環境変数とシークレット管理、実践プロジェクト：Node.js/Python/Java アプリの基本CI構築について解説します。自動化されたビルドとテストのプロセスを構築できるようになります。

### [4. コンテナ技術とDocker - アプリケーションのパッケージング](https://fcircle-biz.github.io/tech_docs/guide/development-processes/devops/devops-learning-material-4.html)
Dockerを使ったコンテナ化とDevOpsワークフローへの統合について学びます。コンテナ技術の復習（イメージ、コンテナ、レジストリ）、DevOpsにおけるコンテナの役割（環境の一貫性、移植性、迅速なデプロイ）、Dockerfileのベストプラクティス（マルチステージビルド、レイヤー最適化、セキュリティ）、コンテナイメージのタグ戦略（latest、セマンティックバージョニング、Git SHA）、コンテナレジストリの活用（Docker Hub、AWS ECR、Google GCR、Azure ACR、GitHub Container Registry）、Docker Composeによる開発環境の標準化、CI/CDパイプラインでのDockerイメージビルド自動化、イメージの脆弱性スキャン（Trivy、Snyk）、マルチアーキテクチャイメージのビルド（AMD64、ARM64）、実践プロジェクト：アプリケーションのコンテナ化とレジストリへの自動プッシュについて解説します。コンテナ技術をDevOpsワークフローに統合できるようになります。

### [5. Kubernetesとコンテナオーケストレーション - スケーラブルなデプロイメント](https://fcircle-biz.github.io/tech_docs/guide/development-processes/devops/devops-learning-material-5.html)
Kubernetesを使ったコンテナオーケストレーションの基礎を学びます。Kubernetesとは何か（コンテナオーケストレーションの必要性）、Kubernetesアーキテクチャ（マスターノード、ワーカーノード、コントロールプレーン）、主要なKubernetesリソース（Pod、Deployment、Service、ConfigMap、Secret）、Kubernetesマニフェストファイルの記述（YAML定義）、kubectl コマンドの基本操作、ローカル開発環境（Minikube、Kind、Docker Desktop Kubernetes）、名前空間によるリソース分離、ラベルとセレクタによるリソース管理、Serviceの種類（ClusterIP、NodePort、LoadBalancer、Ingress）、ConfigMapとSecretによる設定管理、ヘルスチェック（Liveness/Readiness Probe）、リソース制限（CPU、メモリ）、実践プロジェクト：マイクロサービスアプリケーションのKubernetesデプロイについて解説します。Kubernetesの基本概念と操作を習得できます。

### [6. Infrastructure as Code (IaC) - インフラの自動化とコード管理](https://fcircle-biz.github.io/tech_docs/guide/development-processes/devops/devops-learning-material-6.html)
TerraformとAnsibleを使ったインフラ自動化について学びます。Infrastructure as Codeとは何か（インフラをコードで管理するメリット）、IaCの原則（宣言的構成、べき等性、バージョン管理）、主要なIaCツール（Terraform、Ansible、CloudFormation、Pulumi）、Terraformの基礎（プロバイダー、リソース、変数、出力、状態管理）、HCL（HashiCorp Configuration Language）の記述方法、Terraformワークフロー（init、plan、apply、destroy）、Terraformモジュールの作成と再利用、リモート状態管理（S3、Terraform Cloud）、Ansibleの基礎（インベントリ、Playbook、タスク、ハンドラー、ロール）、AnsibleとTerraformの使い分け（プロビジョニング vs 構成管理）、IaCのベストプラクティス（ディレクトリ構造、環境分離、シークレット管理）、実践プロジェクト：AWSインフラのコード化（VPC、EC2、RDS等）について解説します。インフラを自動化し、再現可能な環境構築ができるようになります。

### [7. クラウドプラットフォームとDevOps - AWS/Azure/GCPの活用](https://fcircle-biz.github.io/tech_docs/guide/development-processes/devops/devops-learning-material-7.html)
主要クラウドプラットフォームのDevOpsサービスと活用方法を学びます。クラウドネイティブとは何か（スケーラビリティ、弾力性、可用性）、AWS DevOpsサービス（CodePipeline、CodeBuild、CodeDeploy、ECS、EKS、Lambda）、Azure DevOpsサービス（Azure Pipelines、Azure Kubernetes Service、Azure DevOps）、GCP DevOpsサービス（Cloud Build、GKE、Cloud Run、Cloud Deploy）、マネージドKubernetesサービスの比較（EKS vs AKS vs GKE）、サーバーレスアーキテクチャとDevOps（AWS Lambda、Azure Functions、Google Cloud Functions）、クラウドネイティブCI/CD（クラウドネイティブビルド、デプロイ戦略）、マルチクラウド戦略とハイブリッドクラウド、クラウドコスト最適化（リソースタグ付け、自動スケーリング、スポットインスタンス）、クラウドセキュリティの基礎（IAM、ネットワークセキュリティグループ、暗号化）、実践プロジェクト：クラウドネイティブアプリケーションのデプロイパイプライン構築について解説します。クラウドプラットフォームを活用した効率的なDevOps実践ができるようになります。

### [8. モニタリング、ロギング、オブザーバビリティ - システムの可視化](https://fcircle-biz.github.io/tech_docs/guide/development-processes/devops/devops-learning-material-8.html)
システムの監視、ログ管理、オブザーバビリティの実践方法を学びます。モニタリングとオブザーバビリティの違い（メトリクス、ログ、トレース）、モニタリングの4つのゴールデンシグナル（レイテンシ、トラフィック、エラー、飽和度）、Prometheusによるメトリクス収集（アーキテクチャ、PromQL、Exporter、アラート）、Grafanaによる可視化（ダッシュボード作成、データソース連携、アラート通知）、ロギング戦略（集中ログ管理の重要性、ログレベル、構造化ログ）、ELKスタック（Elasticsearch、Logstash、Kibana）とログ分析、Fluentd/Fluent Bitによるログ収集、分散トレーシング（Jaeger、Zipkin、OpenTelemetry）、アラート管理（アラート疲労の回避、エスカレーションポリシー、on-callローテーション）、SLI/SLO/SLAの設定（サービスレベル目標の定義）、クラウドネイティブモニタリング（CloudWatch、Azure Monitor、Cloud Monitoring）、実践プロジェクト：完全なオブザーバビリティスタックの構築について解説します。システムの健全性を監視し、問題を早期発見できるようになります。

### [9. セキュリティとDevSecOps - セキュリティの組み込み](https://fcircle-biz.github.io/tech_docs/guide/development-processes/devops/devops-learning-material-9.html)
DevSecOps（セキュリティを組み込んだDevOps）の実践方法を学びます。DevSecOpsとは何か（セキュリティシフトレフト、開発ライフサイクル全体でのセキュリティ）、脅威モデリングとリスク評価、セキュアコーディングプラクティス、静的アプリケーションセキュリティテスト（SAST）（SonarQube、Checkmarx）、動的アプリケーションセキュリティテスト（DAST）、ソフトウェアコンポジション解析（SCA - 依存関係の脆弱性スキャン）、コンテナイメージのセキュリティスキャン（Trivy、Clair、Anchore）、シークレット管理（Vault、AWS Secrets Manager、Azure Key Vault）、CI/CDパイプラインへのセキュリティゲート統合、コンプライアンスと監査（SOC2、ISO27001、GDPR対応）、インフラセキュリティ（ネットワークセグメンテーション、最小権限の原則）、ランタイムセキュリティ（Falco、セキュリティポリシー）、インシデント対応計画、実践プロジェクト：セキュアなCI/CDパイプラインの構築について解説します。セキュリティを最初から組み込んだDevOpsプラクティスを実践できるようになります。

### [10. DevOps実践とベストプラクティス - 本番運用とチーム成熟度向上](https://fcircle-biz.github.io/tech_docs/guide/development-processes/devops/devops-learning-material-10.html)
実践的なDevOps運用とチームの成熟度向上について学びます。デプロイメント戦略（Blue-Green Deployment、Canary Deployment、Rolling Update、Feature Flags）、カオスエンジニアリングの基礎（Chaos Monkey、障害注入テスト）、ディザスタリカバリとバックアップ戦略、GitOpsの実践（ArgoCD、Flux、宣言的デプロイメント）、Platform Engineering（内部開発者プラットフォームの構築）、DevOpsメトリクスの測定（DORA Metrics - デプロイ頻度、変更のリードタイム、MTTR、変更失敗率）、ポストモーテム文化（障害から学ぶ、非難しない文化）、継続的改善プロセス（レトロスペクティブ、カイゼン）、チームトポロジーとコミュニケーション構造、DevOps成熟度モデル、スケーリングDevOps（大規模組織での実践）、DevOpsツールチェーンの最適化、次世代技術（WebAssembly、eBPF、Service Mesh）、実践プロジェクト：エンドツーエンドDevOpsパイプラインの完成について解説します。実務レベルでのDevOps運用と継続的改善ができるようになります。

## 学習の進め方

1. **順序立てた学習**: 初めてDevOpsを学ぶ方は、必ず「1. DevOpsの基礎と文化」から順番に学習を進めてください。各章は前章の内容を前提としています。
2. **実践重視**: DevOpsは実際に手を動かすことで理解が深まります。各章のサンプルコマンドやコード例を必ず自分の環境で実行してみましょう。
3. **小規模から始める**: 最初は小規模なプロジェクトやサンプルアプリケーションで練習し、徐々に複雑な構成に挑戦しましょう。
4. **自動化を優先**: 手作業で行っている作業を見つけたら、それを自動化する方法を考えましょう。DevOpsの本質は自動化です。
5. **エラーからの学習**: パイプラインの失敗やデプロイの問題は学習の機会です。ログを分析し、問題解決のプロセスを身につけましょう。
6. **コミュニティの活用**: DevOpsコミュニティは活発です。GitHub、Stack Overflow、技術ブログ、カンファレンス動画などを活用しましょう。
7. **ツールの組み合わせ**: DevOpsツールは単独ではなく、組み合わせて使用します。ツール間の連携を理解しましょう。
8. **文化的側面の理解**: DevOpsは単なるツールではなく、文化とマインドセットです。技術と同時に、コラボレーションやコミュニケーションの改善も意識しましょう。

## 推奨学習期間

- **基礎理解コース** (1-3章): 2-3週間
  - DevOpsの概念、Git戦略、CI/CDの基礎を習得
  - 1日1-2時間の学習で、DevOpsの全体像と基本的な自動化を理解できます

- **コンテナとオーケストレーションコース** (4-5章): 3-4週間
  - Docker、Kubernetesを使ったコンテナ化とデプロイメント
  - 実際のコンテナ環境での開発・運用スキルを身につけます

- **自動化とクラウドコース** (6-7章): 3-4週間
  - IaC、クラウドプラットフォームの活用
  - インフラ自動化とクラウドネイティブな実践を学びます

- **運用と成熟度向上コース** (8-10章): 3-4週間
  - モニタリング、セキュリティ、ベストプラクティス
  - 本番運用レベルのDevOpsスキルを習得します

**合計学習期間**: 11-15週間（3-4ヶ月、1日1-2時間の学習を想定）

※ 既にDocker、Git、クラウドの経験がある場合は、該当する章を短縮または飛ばして進めることができます。

## 関連リソース

### チートシート
- [Gitコマンドチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/fundamentals/git-cheatsheet.html)
- [Dockerコマンドチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/cloud-infra/docker-cheatsheet.html)（準備中）
- [Kubernetesコマンドチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/cloud-infra/kubernetes-cheatsheet.html)（準備中）
- [Terraformチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/cloud-infra/terraform-cheatsheet.html)（準備中）
- [CI/CDベストプラクティスチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/cloud-infra/cicd-cheatsheet.html)（準備中）

### 関連ガイドライン
- [Docker学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/cloud-infra/docker/README.html)
- [Kubernetes学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/cloud-infra/kubernetes/README.html)（準備中）
- [AWS学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/cloud-infra/aws/README.html)（準備中）
- [Linux基礎学習ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/os/linux/README.html)（準備中）

### 外部リソース
- [DevOps Roadmap](https://roadmap.sh/devops) - 包括的な学習ロードマップ
- [The Phoenix Project](https://itrevolution.com/product/the-phoenix-project/) - DevOpsを物語で理解
- [Kubernetes Documentation](https://kubernetes.io/ja/docs/home/)
- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [CNCF DevOps Resources](https://www.cncf.io/)
- [AWS Well-Architected Framework](https://aws.amazon.com/jp/architecture/well-architected/)

## 学習目標

このガイドを完了すると、以下のスキルを身につけることができます：

- **DevOps文化の理解**: DevOpsの原則、文化、プラクティスを理解し、チームに適用できる
- **バージョン管理マスター**: Gitの高度な機能を活用し、効果的なブランチ戦略とコラボレーションができる
- **CI/CDパイプライン構築**: 自動ビルド、テスト、デプロイのパイプラインを設計・実装できる
- **コンテナ技術の実践**: Dockerでアプリケーションをコンテナ化し、レジストリで管理できる
- **Kubernetesオーケストレーション**: Kubernetesでコンテナをデプロイ・管理し、スケーラブルなシステムを構築できる
- **インフラ自動化**: TerraformやAnsibleでインフラをコード化し、自動プロビジョニングができる
- **クラウド活用**: AWS、Azure、GCPのDevOpsサービスを理解し、クラウドネイティブなアプリケーションをデプロイできる
- **システム監視**: Prometheus、Grafana、ELKスタックでシステムを監視し、問題を早期発見できる
- **セキュリティ統合**: DevSecOpsプラクティスを実践し、セキュアなパイプラインを構築できる
- **継続的改善**: メトリクスを測定し、DevOpsプロセスを継続的に改善できる
- **問題解決能力**: DevOps環境での一般的な問題を自力で調査・解決できる
- **本番運用スキル**: 本番環境でのデプロイ戦略、モニタリング、インシデント対応ができる

## 次のステップ

このガイドライン完了後は、以下の学習に進むことをお勧めします：

### 高度なコンテナオーケストレーション
- **Kubernetes応用**: Service Mesh（Istio、Linkerd）、Operator開発、カスタムリソース定義（CRD）
- **Helm**: Kubernetesパッケージマネージャーの習得
- **Knative**: サーバーレスコンテナプラットフォーム

### サイト信頼性エンジニアリング (SRE)
- **SREプラクティス**: SLI/SLO/SLA設定、エラーバジェット、Toil削減
- **インシデント管理**: On-call運用、ポストモーテム、インシデント対応プロセス
- **キャパシティプランニング**: リソース予測、スケーリング戦略

### クラウドネイティブ技術
- **Service Mesh**: Istio、Linkerdによる高度なサービス間通信管理
- **サーバーレス**: AWS Lambda、Azure Functions、Google Cloud Functionsの深堀り
- **Event-Driven Architecture**: イベント駆動アーキテクチャの設計と実装

### Platform Engineering
- **内部開発者プラットフォーム**: セルフサービスプラットフォームの構築
- **Developer Experience**: 開発者体験の向上、ツールチェーンの最適化
- **Platform as a Product**: プラットフォームをプロダクトとして運用

### 高度なセキュリティ
- **Zero Trust Architecture**: ゼロトラストセキュリティモデルの実装
- **コンプライアンス自動化**: Policy as Code（OPA、Kyverno）
- **セキュリティ監査**: 継続的なセキュリティ監査と改善

### データベースとDevOps
- **Database DevOps**: スキーママイグレーション自動化、データベースCI/CD
- **データ管理**: バックアップ自動化、ディザスタリカバリ

### マイクロサービスとAPI管理
- **マイクロサービスアーキテクチャ**: 設計パターン、分散システムの課題
- **API Gateway**: Kong、Apigee、AWS API Gatewayの活用

このガイドで学んだDevOpsの基礎知識は、これらすべての技術領域で活用できる重要な基盤となります。DevOpsは継続的に進化する分野であり、新しいツールやプラクティスが常に登場します。学習を継続し、コミュニティに参加し、実践を通じてスキルを磨き続けることが重要です。
