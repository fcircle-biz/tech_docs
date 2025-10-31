# 機械学習 学習ガイドライン

このガイドラインでは、機械学習の基礎を入門者向けに段階的に学習するためのカリキュラムを提供しています。

## 前提条件
### 必要な環境
- Python 3.8以降
- Jupyter Notebook または JupyterLab
- 主要ライブラリ: scikit-learn, pandas, numpy, matplotlib, seaborn
- 4GB以上のRAM（推奨: 8GB以上）

### 参考リソース
- [scikit-learn公式ドキュメント（日本語）](https://scikit-learn.org/stable/)
- [機械学習入門（Coursera）](https://www.coursera.org/learn/machine-learning)
- [Kaggle Learn](https://www.kaggle.com/learn)
- [Python機械学習プログラミング](https://www.oreilly.co.jp/)

### 前提知識
- **必須**: Pythonの基本的な文法（変数、制御構造、関数、データ構造）
- **必須**: 基本的な数学知識（代数、統計の基礎）
- **推奨**: NumPy、Pandasの基本操作
- **推奨**: 線形代数と微積分の基礎知識

## 学習コンテンツ
### [1. 機械学習の概要と環境構築](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/data-ai/machine-learning/machine-learning-learning-material-1.html)
機械学習とは何か、その応用分野、機械学習の種類（教師あり学習、教師なし学習、強化学習）、開発環境のセットアップ方法を学びます。

### [2. 機械学習の基礎概念](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/data-ai/machine-learning/machine-learning-learning-material-2.html)
学習プロセスの理解、特徴量とラベル、訓練データとテストデータ、過学習と汎化、バイアス・バリアンストレードオフについて学習します。

### [3. データの前処理](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/data-ai/machine-learning/machine-learning-learning-material-3.html)
データの読み込みと確認、欠損値の処理、外れ値の検出と処理、データの正規化とスケーリング、カテゴリカル変数のエンコーディングを学びます。

### [4. 教師あり学習：回帰](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/data-ai/machine-learning/machine-learning-learning-material-4.html)
線形回帰の理論と実装、多項式回帰、正則化（Ridge、Lasso、ElasticNet）、回帰モデルの評価指標（MSE、RMSE、R²）について学習します。

### [5. 教師あり学習：分類](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/data-ai/machine-learning/machine-learning-learning-material-5.html)
ロジスティック回帰、決定木、k近傍法（k-NN）、サポートベクターマシン（SVM）、分類モデルの評価指標（精度、適合率、再現率、F1スコア）を学びます。

### [6. モデルの評価と検証](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/data-ai/machine-learning/machine-learning-learning-material-6.html)
交差検証（k-分割交差検証）、混同行列とROC曲線、ハイパーパラメータチューニング（グリッドサーチ、ランダムサーチ）、学習曲線と検証曲線を学習します。

### [7. 特徴量エンジニアリング](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/data-ai/machine-learning/machine-learning-learning-material-7.html)
特徴量の重要度分析、特徴量選択の手法、新しい特徴量の生成、次元削減（PCA、t-SNE）、時系列特徴量の作成について学びます。

### [8. アンサンブル学習](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/data-ai/machine-learning/machine-learning-learning-material-8.html)
バギング（ランダムフォレスト）、ブースティング（AdaBoost、Gradient Boosting）、XGBoost、LightGBM、スタッキングの理論と実装を学習します。

### [9. 教師なし学習](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/data-ai/machine-learning/machine-learning-learning-material-9.html)
クラスタリング（k-means、階層的クラスタリング、DBSCAN）、次元削減の詳細、異常検知、アソシエーション分析の基礎を学びます。

### [10. 実践プロジェクト開発](https://fcircle-biz.github.io/tech_docs/guide/data-ai-category/data-ai/machine-learning/machine-learning-learning-material-10.html)
実データを使った予測モデル構築、Kaggleコンペティションへの参加準備、モデルのデプロイメント基礎、機械学習パイプラインの構築を実践します。

## 学習の進め方
1. **環境構築から始める**: 第1章でPythonと必要なライブラリを正しくセットアップし、Jupyter Notebookで動作確認を行います
2. **数学的基礎を復習**: 線形代数や統計学の基礎知識が不足している場合は、並行して補強学習を行います
3. **実践重視のアプローチ**: 理論を学んだ後は必ず実データで手を動かし、コードを書いて結果を確認します
4. **視覚化を活用**: データの分布やモデルの挙動を必ず可視化し、直感的な理解を深めます
5. **Kaggleで実践**: 学習が進んだら、Kaggleのチュートリアルやコンペティションに参加して実践力を磨きます

## 推奨学習期間
- **基礎習得コース** (1-6章): 6-8週間
- **実践活用コース** (7-10章): 6-8週間
- **合計学習期間**: 12-16週間（週5-7時間の学習を想定）

## 関連リソース
- [機械学習アルゴリズムチートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/machine-learning/ml-algorithms-cheatsheet.html)
- [scikit-learn活用チートシート](https://fcircle-biz.github.io/tech_docs/cheatsheet/machine-learning/scikit-learn-cheatsheet.html)
- [Python基礎ガイドライン](https://fcircle-biz.github.io/tech_docs/guide/python-ecosystem/python/README.html)

## 学習目標
このガイドを完了すると、以下のスキルを身につけることができます：
- 機械学習の基本概念と主要なアルゴリズムを理解し、適切に使い分けられる
- scikit-learnを使って回帰・分類・クラスタリングの問題を解くことができる
- データの前処理、特徴量エンジニアリング、モデル評価の実践的スキルを持つ
- 過学習を防ぎ、汎化性能の高いモデルを構築できる
- XGBoostやLightGBMなどの高度なアルゴリズムを活用できる
- 実務で使える機械学習パイプラインを設計・実装できる

## 次のステップ
このガイドライン完了後は、以下の学習に進むことをお勧めします：
- [深層学習（ディープラーニング）入門](https://fcircle-biz.github.io/tech_docs/guide/data-ai/deep-learning/README.html)
- [自然言語処理入門](https://fcircle-biz.github.io/tech_docs/guide/data-ai/nlp/README.html)
- [コンピュータビジョン入門](https://fcircle-biz.github.io/tech_docs/guide/data-ai/computer-vision/README.html)
- [MLOps入門](https://fcircle-biz.github.io/tech_docs/guide/data-ai/mlops/README.html)
