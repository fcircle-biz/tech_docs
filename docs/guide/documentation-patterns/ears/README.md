# EARS（Easy Approach to Requirements Syntax） 学習ガイドライン

このガイドラインでは、EARS（Easy Approach to Requirements Syntax）の基礎を入門者向けに段階的に学習するためのカリキュラムを提供しています。

## 前提条件
### 必要な環境
- テキストエディタ（VS Code、Notepad++等）
- 要求管理ツール（DOORS、Jira等）※オプション
- Microsoft Word/Excel（要求文書作成用）

### 参考リソース
- [EARS Quick Reference Card](https://www.iaria.org/conferences2012/filesICCGI12/Tutorial%20Specifying%20Requirements%20with%20EARS%20Syntax.pdf)
- [Requirements Engineering Best Practices](https://www.ireb.org/en/)
- [INCOSE Guide to Writing Requirements](https://www.incose.org/)

### 前提知識
- **必須**: システム開発プロセスの基礎知識
- **推奨**: 要求定義の経験、自然言語での文書作成能力

## 学習コンテンツ
### [1. EARSの概要と背景](https://fcircle-biz.github.io/tech_docs/guide/requirements-engineering/ears/ears-learning-material-1.html)
EARSの歴史的背景、従来の要求記述の問題点、EARSが解決する課題について学習します。要求工学の基本概念と、なぜ構造化された要求記述が必要なのかを理解します。

### [2. 要求記述の基本原則](https://fcircle-biz.github.io/tech_docs/guide/requirements-engineering/ears/ears-learning-material-2.html)
良い要求の特性（SMART原則）、曖昧さの排除方法、検証可能な要求の書き方について学びます。EARSの基本思想と5つの構文パターンの概要を理解します。

### [3. Ubiquitous要求パターン](https://fcircle-biz.github.io/tech_docs/guide/requirements-engineering/ears/ears-learning-material-3.html)
常に適用される要求を記述するUbiquitousパターンの構文と使用方法を学習します。「The [system name] shall [requirement]」形式の基本的な記述方法と実例を習得します。

### [4. Event-driven要求パターン](https://fcircle-biz.github.io/tech_docs/guide/requirements-engineering/ears/ears-learning-material-4.html)
イベント駆動型の要求を記述するEvent-drivenパターンを学びます。「When [trigger], the [system name] shall [requirement]」形式の記述方法と、トリガーの識別方法を習得します。

### [5. Unwanted Behavior要求パターン](https://fcircle-biz.github.io/tech_docs/guide/requirements-engineering/ears/ears-learning-material-5.html)
望ましくない動作への対処を記述するUnwanted Behaviorパターンを学習します。「If [unwanted condition], then the [system name] shall [requirement]」形式での例外処理やエラー処理の記述方法を習得します。

### [6. State-driven要求パターン](https://fcircle-biz.github.io/tech_docs/guide/requirements-engineering/ears/ears-learning-material-6.html)
システムの状態に依存する要求を記述するState-drivenパターンを学びます。「While [state], the [system name] shall [requirement]」形式での状態依存要求の記述方法を習得します。

### [7. Optional Feature要求パターン](https://fcircle-biz.github.io/tech_docs/guide/requirements-engineering/ears/ears-learning-material-7.html)
オプション機能を記述するOptional Featureパターンを学習します。「Where [feature is included], the [system name] shall [requirement]」形式での条件付き要求の記述方法を習得します。

### [8. 複合パターンと実践演習](https://fcircle-biz.github.io/tech_docs/guide/requirements-engineering/ears/ears-learning-material-8.html)
複数のパターンを組み合わせた複雑な要求の記述方法を学びます。実際のシステム要求仕様書の作成演習を通じて、EARSの実践的な活用方法を習得します。

## 学習の進め方
1. **基礎理解フェーズ（1-2章）**: EARSの背景と基本原則を理解する
2. **パターン習得フェーズ（3-7章）**: 各EARSパターンを個別に学習し、練習問題で定着させる
3. **実践応用フェーズ（8章）**: 実際のプロジェクトシナリオでEARSを活用する

## 推奨学習期間
- **基礎習得コース** (1-2章): 1-2週間
- **パターン習得コース** (3-7章): 3-4週間
- **実践活用コース** (8章): 1-2週間

## 関連リソース
- [要求工学チートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/requirements/ears-cheatsheet.html)
- [システム開発ドキュメントパターン](https://fcircle-biz.github.io/tech_docs/guide/documentation-patterns/)
- [アジャイル要求管理ガイド](https://fcircle-biz.github.io/tech_docs/guide/agile/requirements-management/)

## 学習目標
このガイドを完了すると、以下のスキルを身につけることができます：
- 曖昧さのない明確な要求文を作成できる
- 5つのEARSパターンを適切に使い分けられる
- 既存の要求文書をEARS形式に変換できる
- 要求の検証可能性とトレーサビリティを確保できる
- プロジェクトチーム内で一貫性のある要求記述ができる
- 要求レビューの品質を向上させることができる

## 次のステップ
このガイドライン完了後は、以下の学習に進むことをお勧めします：
- [SysMLによるシステムモデリング](https://fcircle-biz.github.io/tech_docs/guide/systems-engineering/sysml/)
- [要求管理ツール実践ガイド](https://fcircle-biz.github.io/tech_docs/guide/requirements-engineering/tools/)
- [ユースケース記述法](https://fcircle-biz.github.io/tech_docs/guide/requirements-engineering/use-cases/)