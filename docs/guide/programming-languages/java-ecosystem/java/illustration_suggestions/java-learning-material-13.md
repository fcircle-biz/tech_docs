# 図解提案レポート: java-learning-material-13.html

生成日時: 2026-01-04
対象ファイル: /home/ichimaru/git/tech_docs/docs/guide/programming-languages/java-ecosystem/java/java-learning-material-13.html

---

| セクション / コンテキスト | 提案する図解 | 図解タイプ | 優先度 | 理由 |
| :--- | :--- | :--- | :--- | :--- |
| Java標準ライブラリの全体像 | 主要パッケージの分類と用途 | 概念図 | 中 | java.lang, java.util, java.io, java.netなど主要パッケージを機能別に分類表示 |
| Stringクラスのイミュータブル性 | String操作時のメモリ上の動き | メモリ図 | 高 | 文字列連結や変更時に新しいStringオブジェクトが生成される仕組みを段階的に示す |
| StringBuilderの仕組み | StringとStringBuilderの違い | 比較図 | 高 | 不変のStringと可変のStringBuilderのメモリ効率の違いを視覚化 |
| ラッパークラスとオートボクシング | プリミティブ型とラッパークラスの変換 | 概念図 | 中 | int ⇔ Integerの自動変換（オートボクシング/アンボクシング）の仕組みを図示 |
| 日付・時間API（java.time） | LocalDate, LocalTime, LocalDateTimeの関係 | クラス関係図 | 低 | 日付・時間関連クラスの役割分担を図示 |

---

## 優先度別サマリー

### 高優先度
- **Stringのイミュータブル性**: 文字列操作時に新しいオブジェクトが生成される仕組みを示すメモリ図
- **StringBuilderとの比較**: StringとStringBuilderのメモリ効率の違いを示す比較図

### 中優先度
- **標準ライブラリの全体像**: 主要パッケージを機能別に分類した概念図
- **オートボクシング**: プリミティブ型とラッパークラス間の自動変換を示す概念図

### 低優先度
- **日付・時間API**: 関連クラスの役割分担を示すクラス関係図（既存のAPI説明で十分な可能性）
