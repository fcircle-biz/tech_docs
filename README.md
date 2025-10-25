# 技術ドキュメントリポジトリ

ソフトウェア開発およびIT関連トピックに関する技術チートシートや学習ガイドをHTML形式で提供する技術文書集です。

## 📋 目次

- [📖 概要](#-概要)
- [📖 スライド教材](#-スライド教材)
- [📖 チュートリアル](#-チュートリアル)
- [📖 学習ガイドライン](#-学習ガイドライン)
- [📚 チートシート](#-チートシート)
- [🤖 AIアシスタント用プロンプト集](#-aiアシスタント用プロンプト集)

---

## 📖 概要

このリポジトリは、プログラミング初心者から上級者まで幅広く対応した日本語技術ドキュメント集です。各技術領域において、体系的な学習ガイド、実践的なチュートリアル、すぐに使えるチートシート、そしてAI活用のためのプロンプト集を提供しています。

### 特徴

- **HTML形式の教材**: ブラウザで直接閲覧可能な見やすいドキュメント
- **段階的学習**: 基礎から応用まで順序立てて学べる構成
- **実践的内容**: ユーザー管理システム開発を通じた実践的な学習
- **多様な技術領域**: Java、Python、.NET、JavaScript、データベース、AI等の幅広いカバレッジ

---

## 📖 スライド教材

### データベース

- **[SQL基礎 スライド教材](docs/slide/database/sql-fundamentals/README.md)** - SQL（Structured Query Language）の基本概念からデータベース操作の実践まで、視覚的なスライド形式で効率的に学習できる教材。リレーショナルデータベースの概念、SELECT文、JOIN、グループ化、トランザクション制御まで14枚のスライドで体系的に学習

### .NET

- **[VB.NET スライド教材](docs/slide/dotnet-ecosystem/vbnet/README.md)** - VB.NETプログラミング言語の基礎から実践的な開発パターンまでを視覚的なスライド形式で効率的に学習できる教材。オブジェクト指向プログラミング、.NET統合、Windowsフォーム開発など12枚のスライドで体系的に学習
- **[ASP.NET WebForms (VB.NET) スライド教材](docs/slide/dotnet-ecosystem/aspnet-vb-webforms/README.md)** - ASP.NET WebFormsとVB.NETを使用したWebアプリケーション開発の重要概念を視覚的なスライド形式で効率的に学習できる教材。イベントドリブンプログラミングモデルによる迅速なWebアプリケーション開発を11枚のスライドで体系的に学習
- **[ASP.NET Core MVC (VB.NET) スライド教材](docs/slide/dotnet-ecosystem/aspnet-vb-core-mvc/README.md)** - ASP.NET Core MVCとVB.NETを使用したモダンなWebアプリケーション開発の重要概念を視覚的なスライド形式で効率的に学習できる教材。クロスプラットフォーム対応・高性能なMVCアーキテクチャによるWebアプリケーション開発を14枚のスライドで体系的に学習

### Java

- **[Java基本 スライド教材](docs/slide/java-ecosystem/java-basics/README.md)** - Javaプログラミングの基礎から実践的な開発手法まで、視覚的なスライド形式で効率的に学習できる教材。Write Once, Run Anywhereの概念、オブジェクト指向プログラミング、JVMの仕組み、Webアプリケーション開発まで14枚のスライドで体系的に学習
- **[JDBC基本 スライド教材](docs/slide/java-ecosystem/jdbc-basic/README.md)** - JDBC（Java Database Connectivity）の基礎から実践的なデータベース操作まで、視覚的なスライド形式で効率的に学習できる教材。データベース接続、SQL実行、トランザクション制御、セキュリティ対策まで14枚のスライドで体系的に学習
- **[JSP基本 スライド教材](docs/slide/java-ecosystem/jsp-basics/README.md)** - JSP（JavaServer Pages）の基本概念から実践的なWebアプリケーション開発まで、視覚的なスライド形式で効率的に学習できる教材。JSP構文要素、暗黙オブジェクト、EL式とJSTL、フォーム処理とDB連携まで14枚のスライドで体系的に学習

---

## 📖 チュートリアル

実際にコードを書きながら学ぶ実践的なチュートリアル集です。各チュートリアルはユーザー管理システムの開発を通じて、フレームワークの理解を深めます。

### .NET

- **[ASP.NET(VB.NET)実践チュートリアル](docs/tutorial/dotnet-ecosystem/aspnet-vb/README.md)** - ASP.NET Web FormsとVB.NETによるユーザー管理システム開発の実践的なチュートリアル（6章構成）
- **[ASP.NET Core MVC(VB.NET)実践チュートリアル](docs/tutorial/dotnet-ecosystem/aspnet-core-mvc-vb/README.md)** - ASP.NET Core MVCとEntity Framework Coreを使用したモダンなWebアプリケーション開発の実践的なチュートリアル（7章構成）

### Java

- **[Spring Boot + Gradle実践チュートリアル](docs/tutorial/java-ecosystem/spring-boot-gradle/README.md)** - Spring BootとGradleを使用したモダンなJava Webアプリケーション開発の実践的なチュートリアル。Docker環境でのPostgreSQL連携、Spring MVC、Spring Data JPA、Thymeleafによるユーザー管理システム開発（10章構成）
- **[JSP/Servlet/JDBC実践チュートリアル](docs/tutorial/java-ecosystem/jsp-servlet-jdbc/README.md)** - Eclipse IDEを使用したJavaのWebアプリケーション開発基礎技術（JSP、Servlet、JDBC）を学ぶ実践的なチュートリアル。MVCパターンに基づいたユーザー管理システム開発（7章構成）
- **[Struts 1.x実践チュートリアル](docs/tutorial/java-ecosystem/struts1/README.md)** - Apache Struts 1.xフレームワークを使用したWebアプリケーション開発の実践的なチュートリアル（6章構成）

### JavaScript

- **[Next.js実践チュートリアル](docs/tutorial/javascript-ecosystem/nextjs/README.md)** - Next.jsフレームワークを使用したモダンなReactアプリケーション開発の実践的なチュートリアル
- **[React実践チュートリアル](docs/tutorial/javascript-ecosystem/react/README.md)** - Reactライブラリを使用したモダンなWebアプリケーション開発の実践的なチュートリアル

### PHP

- **[PHP実践チュートリアル](docs/tutorial/php-ecosystem/php/README.md)** - PHPの基本文法からデータベース連携まで、初心者向けユーザー管理システム開発チュートリアル（6章構成）

### Python

- **[Django + PostgreSQL実践チュートリアル](docs/tutorial/python-ecosystem/django/README.md)** - DjangoフレームワークとPostgreSQL（Docker環境）を使用したモダンなPython Webアプリケーション開発の実践的なチュートリアル。Windows環境での開発を前提に、Docker DesktopによるPostgreSQLコンテナ管理からDjangoの基本機能、実用的なユーザー管理システムまでを段階的に実装（9章構成）
- **[FastAPI + SQLAlchemy実践チュートリアル](docs/tutorial/python-ecosystem/fastapi-sqlalchemy/README.md)** - FastAPIとSQLAlchemyを使用したモダンなWebアプリケーション開発の実践的なチュートリアル（7章構成）
- **[Streamlit + SQLModel実践チュートリアル](docs/tutorial/python-ecosystem/streamlit-sqlmodel/README.md)** - StreamlitとSQLModelを使用したモダンなWebアプリケーション開発の実践的なチュートリアル（6章構成）

---

## 📖 学習ガイドライン

各技術の基礎から応用まで段階的に学べる包括的な学習ガイドです。理論的な理解と実践的なスキルを両立できるよう構成されています。

### COBOL

- **[COBOL学習ガイド](docs/guide/cobol-ecosystem/cobol/README.md)** - COBOL基礎から実践的なビジネスロジックまで10章完成カリキュラム

### データベース

- **[SQL学習ガイド](docs/guide/database/sql/README.md)** - SQL基本概念からPostgreSQL高度機能まで10ステップ
- **[Oracle学習ガイド](docs/guide/database/oracle/README.md)** - Oracle Database入門から基本的な運用まで8ステップ
- **[PL/SQL学習ガイド](docs/guide/database/plsql/README.md)** - Oracle PL/SQLの基礎から応用まで10ステップ
- **[DB2学習ガイド](docs/guide/database/db2/README.md)** - IBM DB2データベース入門からDocker環境での運用管理まで8ステップ

### .NET

- **[VB.NET学習ガイド](docs/guide/dotnet-ecosystem/vbnet/README.md)** - VB.NET言語基礎からオブジェクト指向プログラミングまで10章完成カリキュラム
- **[ASP.NET(VB.NET)学習ガイド](docs/guide/dotnet-ecosystem/aspnet-vb/README.md)** - ASP.NET Web Forms基礎から実践的なユーザー管理システム開発まで10章完成カリキュラム
- **[ASP.NET Core(VB.NET)学習ガイド](docs/guide/dotnet-ecosystem/aspnetcore-vb/README.md)** - ASP.NET Core MVCとEntity Framework Coreを使用したモダンWebアプリケーション開発10章完成カリキュラム

### Java

- **[Java学習ガイド](docs/guide/java-ecosystem/java/README.md)** - Java言語基礎から高度技術まで8ステップ
- **[JDBC学習ガイド](docs/guide/java-ecosystem/jdbc/README.md)** - JDBC基礎からパフォーマンスチューニングまで10ステップ
- **[JSP/Servlet学習ガイド](docs/guide/java-ecosystem/jsp/README.md)** - JSP/Servlet基礎からMVCアーキテクチャまで10ステップ
- **[JUnit学習ガイド](docs/guide/java-ecosystem/junit/README.md)** - JUnit 5を使用した単体テストの基礎から応用まで7ステップ
- **[Spring Framework学習ガイド](docs/guide/java-ecosystem/spring/README.md)** - Spring基礎からSecurity機能まで11ステップ
- **[Struts 1.x学習ガイド](docs/guide/java-ecosystem/struts1/README.md)** - Apache Struts 1.x基礎からデプロイメントまで10章完成カリキュラム

### JavaScript

- **[JavaScript完全初心者向け学習ガイド](docs/guide/javascript-ecosystem/javascript-beginner/README.md)** - プログラミング未経験者向けJavaScript入門8章構成カリキュラム
- **[JavaScript中級学習ガイド](docs/guide/javascript-ecosystem/javascript-intermediate/README.md)** - JavaScript基礎知識から実践的なSPA開発まで9週間完成カリキュラム
- **[Next.js学習ガイド](docs/guide/javascript-ecosystem/nextjs/README.md)** - Next.jsフレームワークを使用したモダンなReactアプリケーション開発の基礎を入門者向けに段階的に学習するためのカリキュラム（10章構成）
- **[React学習ガイド](docs/guide/javascript-ecosystem/react/README.md)** - Reactライブラリを使用したモダンなWebアプリケーション開発の基礎を入門者向けに段階的に学習するためのカリキュラム（10章構成）

### Microsoft Office

- **[Excel基本操作学習ガイド](docs/guide/microsoft-office/excel-basic/README.md)** - Excel基本操作から関数、VBA入門まで8章完成カリキュラム
- **[VBA学習ガイド](docs/guide/microsoft-office/vba/README.md)** - VBA基礎からExcel自動化まで10ステップ

### PHP

- **[PHP学習ガイド](docs/guide/php-ecosystem/php/README.md)** - PHP基礎から実践的なWebアプリケーション開発まで10章完成カリキュラム

### Python

- **[Python学習ガイド](docs/guide/python-ecosystem/python/README.md)** - Python基礎から高度なプログラミング技術まで10章完成カリキュラム
- **[Django学習ガイド](docs/guide/python-ecosystem/django/README.md)** - Djangoフレームワークを使用したWebアプリケーション開発の基礎から実践まで10章完成カリキュラム
- **[FastAPI学習ガイド](docs/guide/python-ecosystem/fastapi/README.md)** - FastAPIを使用した高性能WebAPI開発の基礎から実践まで10章完成カリキュラム
- **[SQLAlchemy学習ガイド](docs/guide/python-ecosystem/sqlalchemy/README.md)** - SQLAlchemyを使用したPythonデータベースプログラミングの基礎から実践まで8章完成カリキュラム
- **[SQLModel学習ガイド](docs/guide/python-ecosystem/sqlmodel/README.md)** - SQLModelを使用したモダンなPythonデータベースプログラミング8章完成カリキュラム
- **[Streamlit学習ガイド](docs/guide/python-ecosystem/streamlit/README.md)** - Streamlitを使用したWebアプリケーション開発の基礎から実践まで10章完成カリキュラム

### R

- **[R言語学習ガイド](docs/guide/r-ecosystem/r/README.md)** - R言語基礎から統計解析・データビジュアライゼーションまで10章完成カリキュラム

### SAS

- **[SAS学習ガイド](docs/guide/sas-ecosystem/sas/README.md)** - SASによるデータ分析と統計処理の基礎から実践的な応用まで10章完成カリキュラム

### ソフトウェア設計

- **[要求工学学習ガイド](docs/guide/software-design/requirements-engineering/README.md)** - 要求工学の基礎理論から実践的な要求分析・管理まで10章完成カリキュラム
- **[UML学習ガイド](docs/guide/software-design/uml/README.md)** - UML（統一モデリング言語）の基礎から実践的なシステム設計まで10章完成カリキュラム

---

## 📚 チートシート

すぐに使える技術リファレンス集です。開発現場での参照用として最適化されています。

### AI・機械学習

- **[生成AI](https://fcircle-biz.github.io/tech_docs/cheatsheet/ai/ai-cheatsheet-infographic.html)** - 生成AI基礎知識
- **[AIエージェント](https://fcircle-biz.github.io/tech_docs/cheatsheet/ai/ai-agent-graphic-recording.html)** - AIエージェント基本概念
- **[ディープラーニング](https://fcircle-biz.github.io/tech_docs/cheatsheet/ai/deep-learning-infographic.html)** - ディープラーニング基本
- **[LLM](https://fcircle-biz.github.io/tech_docs/cheatsheet/ai/llm-cheatsheet.html)** - 大規模言語モデル基本
- **[機械学習](https://fcircle-biz.github.io/tech_docs/cheatsheet/ai/ml-beginner-infographic.html)** - 機械学習基礎知識
- **[RAG](https://fcircle-biz.github.io/tech_docs/cheatsheet/ai/rag-infographic.html)** - RAG技術基本概念
- **[統計学](https://fcircle-biz.github.io/tech_docs/cheatsheet/ai/stats-infographic.html)** - 統計学基礎

### データベース

- **[JDBC](https://fcircle-biz.github.io/tech_docs/cheatsheet/databases/jdbc-cheatsheet.html)** - JDBC入門ガイド
- **[Oracle](https://fcircle-biz.github.io/tech_docs/cheatsheet/databases/oracle-cheatsheet.html)** - Oracleデータベース基本
- **[PL/SQL](https://fcircle-biz.github.io/tech_docs/cheatsheet/databases/plsql-graphic-recording.html)** - PL/SQLプログラミング
- **[PostgreSQL](https://fcircle-biz.github.io/tech_docs/cheatsheet/databases/postgresql-infographic.html)** - PostgreSQL基本概念
- **[SQL](https://fcircle-biz.github.io/tech_docs/cheatsheet/databases/sql-cheatsheet.html)** - SQL入門向けリファレンス

### 設計・開発手法

- **[アジャイル開発](https://fcircle-biz.github.io/tech_docs/cheatsheet/design/agile-infographic.html)** - アジャイル開発基本概念
- **[詳細設計](https://fcircle-biz.github.io/tech_docs/cheatsheet/design/detailed-design-infographic_3.html)** - 詳細設計構成要素
- **[ウォーターフォール開発](https://fcircle-biz.github.io/tech_docs/cheatsheet/design/graphic-recording-infographic.html)** - ウォーターフォール各フェーズ
- **[要件定義](https://fcircle-biz.github.io/tech_docs/cheatsheet/design/graphic-recording-infographic_1.html)** - 要件定義プロセス最適化
- **[基本設計](https://fcircle-biz.github.io/tech_docs/cheatsheet/design/graphic-recording-infographic_2.html)** - 基本設計実践ガイド
- **[プログラム設計](https://fcircle-biz.github.io/tech_docs/cheatsheet/design/graphic-recording-infographic_4.html)** - プログラム設計ガイド
- **[ソフトウェアテスト](https://fcircle-biz.github.io/tech_docs/cheatsheet/design/software-testing-infographic_5.html)** - ソフトウェアテスト基礎
- **[UML](https://fcircle-biz.github.io/tech_docs/cheatsheet/design/uml-graphic-recording.html)** - UML基礎知識

### フレームワーク・ライブラリ

- **[MyBatis](https://fcircle-biz.github.io/tech_docs/cheatsheet/frameworks-libraries/mybatis-infographic.html)** - MyBatis基本
- **[React](https://fcircle-biz.github.io/tech_docs/cheatsheet/frameworks-libraries/react-cheatsheet.html)** - React基本から実践まで
- **[Spring Boot](https://fcircle-biz.github.io/tech_docs/cheatsheet/frameworks-libraries/springboot-cheatsheet.html)** - Spring Bootリファレンス
- **[Streamlit](https://fcircle-biz.github.io/tech_docs/cheatsheet/frameworks-libraries/streamlit-infographic.html)** - Streamlit基本
- **[Struts](https://fcircle-biz.github.io/tech_docs/cheatsheet/frameworks-libraries/struts-infographic.html)** - Strutsフレームワーク

### IT基礎知識

- **[フローチャート](https://fcircle-biz.github.io/tech_docs/cheatsheet/it-basics/flowchart-cheatsheet.html)** - フローチャート作成ガイド
- **[ITパスポート試験](https://fcircle-biz.github.io/tech_docs/cheatsheet/it-basics/it-pass-.html)** - ITパスポート試験の包括的ガイド

### プログラム言語

- **[C/C++](https://fcircle-biz.github.io/tech_docs/cheatsheet/programming-languages/cpp-cheatsheet-infographic.html)** - C/C++プログラミング基礎
- **[C#](https://fcircle-biz.github.io/tech_docs/cheatsheet/programming-languages/csharp-cheatsheet.html)** - C#プログラミング基本
- **[Java](https://fcircle-biz.github.io/tech_docs/cheatsheet/programming-languages/java-cheatsheet.html)** - Java入門者向けガイド
- **[JavaScript](https://fcircle-biz.github.io/tech_docs/cheatsheet/programming-languages/js-cheatsheet.html)** - JavaScript基礎解説
- **[PHP](https://fcircle-biz.github.io/tech_docs/cheatsheet/programming-languages/php-graphic-recording.html)** - PHP基本解説
- **[Python](https://fcircle-biz.github.io/tech_docs/cheatsheet/programming-languages/python-cheatsheet.html)** - Python基本から実践まで
- **[VBA](https://fcircle-biz.github.io/tech_docs/cheatsheet/programming-languages/vba-cheatsheet-infographic.html)** - Excel VBA基本

### システム・環境

- **[Linux](https://fcircle-biz.github.io/tech_docs/cheatsheet/systems-environments/linux-cheatsheet-infographic.html)** - Linux基本コマンド
- **[SAS](https://fcircle-biz.github.io/tech_docs/cheatsheet/systems-environments/sas-cheatsheet.html)** - SAS基本構造

### ツール

- **[A5SQL](https://fcircle-biz.github.io/tech_docs/cheatsheet/tools/a5sql-cheatsheet.html)** - A5SQL基本操作
- **[Eclipse](https://fcircle-biz.github.io/tech_docs/cheatsheet/tools/eclipse-cheatsheet.html)** - Eclipse基本操作
- **[Excel](https://fcircle-biz.github.io/tech_docs/cheatsheet/tools/excel-cheatsheet.html)** - Excel基本操作
- **[Notion](https://fcircle-biz.github.io/tech_docs/cheatsheet/tools/notion-cheatsheet.html)** - Notion基本操作
- **[Slack](https://fcircle-biz.github.io/tech_docs/cheatsheet/tools/slack-infographic.html)** - Slack基本機能
- **[VSCode](https://fcircle-biz.github.io/tech_docs/cheatsheet/tools/vscode-cheatsheet.html)** - VSCode基本操作
- **[Windows](https://fcircle-biz.github.io/tech_docs/cheatsheet/tools/windows-cheatsheet.html)** - Windows基本操作
- **[Zoom](https://fcircle-biz.github.io/tech_docs/cheatsheet/tools/zoom-cheatsheet.html)** - Zoom基本操作

### Web技術

- **[HTML/CSS](https://fcircle-biz.github.io/tech_docs/cheatsheet/web-tech/html-css-cheatsheet.html)** - HTML/CSS基本リファレンス
- **[JSP](https://fcircle-biz.github.io/tech_docs/cheatsheet/web-tech/jsp-cheatsheet.html)** - JSPガイド

---

## 🤖 AIアシスタント用プロンプト集

AI開発支援のための専用プロンプト集です。各技術領域に特化したAIアシスタントとして活用できます。

### デザイン・図表作成

- **[デザイン向けプロンプト集](docs/prompt/design/README.md)** - 図表作成・ビジュアルデザイン用プロンプト

### スライド・ドキュメント作成

- **[資料生成AIアシスタント](docs/prompt/doc/README.md)** - ビジネス・スライド用プロンプト

### ニュース分析ツール

- **[経済ニュース分析ツール（基礎編）](https://fcircle-biz.github.io/tech_docs/prompt/news/economic-news-analysis-tool_lv1.html)** - 経済ニュース分析AIアシスタント
- **[経済ニュース分析ツール（上級編）](https://fcircle-biz.github.io/tech_docs/prompt/news/economic-news-analysis-tool_lv2.html)** - 経済ニュース分析AIアシスタント（上級版）
- **[IT業界ニュース分析ツール（基礎編）](https://fcircle-biz.github.io/tech_docs/prompt/news/it-news-analysis-tool_lv1.html)** - IT業界ニュース分析AIアシスタント
- **[IT業界ニュース分析ツール（上級編）](https://fcircle-biz.github.io/tech_docs/prompt/news/it-news-analysis-tool_lv2.html)** - IT業界ニュース分析AIアシスタント（上級版）

### プログラミング支援

- **[ASP.NET VB WebForms開発アシスタント](https://fcircle-biz.github.io/tech_docs/prompt/aspnet-vb-webforms-ai-assistant-prompt.html)** - ASP.NET WebForms VB.NET開発特化AIアシスタント
- **[Java開発支援](https://fcircle-biz.github.io/tech_docs/prompt/java-ai-assistant-prompt.html)** - Java開発支援専用AIアシスタント
- **[JDBC開発エージェント](https://fcircle-biz.github.io/tech_docs/prompt/jdbc-agent-prompt.html)** - JDBC開発特化エージェント
- **[JavaScript開発エキスパート](https://fcircle-biz.github.io/tech_docs/prompt/js-assistant-prompt.html)** - JavaScript開発エキスパート
- **[JSP開発エージェント](https://fcircle-biz.github.io/tech_docs/prompt/jsp-ai-agent-prompt.html)** - JSP開発特化AIエージェント
- **[PHP開発特化](https://fcircle-biz.github.io/tech_docs/prompt/php-coding-assistant-prompt.html)** - PHP開発特化AIアシスタント
- **[React開発エージェント](https://fcircle-biz.github.io/tech_docs/prompt/react-ai-agent-prompt.html)** - React開発特化AIエージェント
- **[Spring Boot開発アシスタント](https://fcircle-biz.github.io/tech_docs/prompt/spring-boot-assistant-prompt.html)** - Spring Boot開発アシスタント
- **[Streamlit開発エージェント](https://fcircle-biz.github.io/tech_docs/prompt/streamlit-ai-agent-prompt.html)** - Streamlit開発特化AIエージェント
- **[VBAプログラミング専門](https://fcircle-biz.github.io/tech_docs/prompt/vba-assistant-prompt.html)** - Office VBAプログラミング専門

### データベース・データ処理

- **[SASプログラミング専門](https://fcircle-biz.github.io/tech_docs/prompt/sas-ai-agent-prompt.html)** - SASプログラミング専門
- **[SASデータエンジニアリング](https://fcircle-biz.github.io/tech_docs/prompt/sas-data-engineering-prompt.html)** - SASデータエンジニアリング特化
- **[SQL特化エキスパート](https://fcircle-biz.github.io/tech_docs/prompt/sql-assistant-prompt.html)** - SQL特化エキスパート

### ツール・その他

- **[Wagby開発アシスタント](https://fcircle-biz.github.io/tech_docs/prompt/tools/wagby-ai-assistant-prompt.html)** - Wagby開発支援AIアシスタント

---

## 🔗 リンク

- [GitHub Pages](https://fcircle-biz.github.io/tech_docs/)
- [リポジトリ](https://github.com/fcircle-biz/tech_docs)

---
