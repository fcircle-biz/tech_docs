/**
 * スライドコンテンツ定義JavaScript
 * 各スライド教材フォルダにコピーして、slidesの定義を変更して使用
 *
 * 【使い方】
 * 1. このファイルを各スライド教材フォルダにコピー
 * 2. slides配列を実際のPDFファイルに合わせて編集
 * 3. HTMLファイルで <script src="slide-content.js"></script> を読み込む
 */

// スライド定義
const slides = [
    { number: 1, title: 'Excelの基本操作', file: 'pdf/Excel基礎ガイド_第1章Excelの基本操作.pdf' },
    { number: 2, title: 'データ入力と書式設定', file: 'pdf/Excel基礎ガイド_第2章データ入力と書式設定.pdf' },
    { number: 3, title: '基本的な計算と関数入門', file: 'pdf/Excel基礎ガイド_第3章基本的な計算と関数入門.pdf' },
    { number: 4, title: '便利機能でデータを整える', file: 'pdf/Excel基礎ガイド_第4章便利機能でデータを整える.pdf' },
    { number: 5, title: '表の作成と印刷設定', file: 'pdf/Excel基礎ガイド_第5章表の作成と印刷設定.pdf' },
    { number: 6, title: 'グラフ作成入門', file: 'pdf/Excel基礎ガイド_第6章_グラフ作成入門.pdf' },
    { number: 7, title: '実務でよく使う関数', file: 'pdf/Excel基礎ガイド_第7章実務でよく使う関数.pdf' },
    { number: 8, title: 'ケーススタディ（実務練習）', file: 'pdf/Excel基礎ガイド_第8章ケーススタディ（実務練習）.pdf' }
];
