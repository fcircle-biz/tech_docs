# HTMLテンプレート構造 v2 (Tailwind CSS版)

## 基本HTML構造

```html
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.1">
    <title>[技術名]学習教材 第X章 - [章タイトル]</title>

    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        // 技術固有色をここで定義（例：Python）
                        primary: {
                            50: '#eff6ff',
                            100: '#dbeafe',
                            200: '#bfdbfe',
                            300: '#93c5fd',
                            400: '#60a5fa',
                            500: '#3b82f6',
                            600: '#2563eb',
                            700: '#1d4ed8',
                            800: '#1e40af',
                            900: '#1e3a8a',
                        }
                    },
                    fontFamily: {
                        sans: ['"Noto Sans JP"', 'sans-serif'],
                    }
                }
            }
        }
    </script>

    <!-- Google Fonts - Noto Sans JP -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Highlight.js CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/atom-one-dark.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"></script>

    <!-- Mermaid.js CDN -->
    <script src="https://cdn.jsdelivr.net/npm/mermaid@10.6.1/dist/mermaid.min.js"></script>

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <!-- カスタムスタイル -->
    <style>
        /* スクロールバーカスタマイズ */
        ::-webkit-scrollbar { width: 8px; height: 8px; }
        ::-webkit-scrollbar-track { background: #f1f5f9; }
        ::-webkit-scrollbar-thumb { background: #cbd5e1; border-radius: 4px; }
        ::-webkit-scrollbar-thumb:hover { background: #94a3b8; }

        /* コードブロックのラインナンバー */
        .hljs-ln-numbers {
            user-select: none;
            text-align: right;
            color: #6b7280;
            padding-right: 12px;
            border-right: 1px solid #374151;
        }

        /* サイドバートランジション */
        .sidebar-transition {
            transition: transform 0.3s ease-in-out, opacity 0.3s ease-in-out, width 0.15s ease-out;
        }

        /* サイドバーリサイズ機能 */
        .sidebar-resizable {
            min-width: 240px;
            max-width: 480px;
        }
        .sidebar-resize-handle {
            position: absolute;
            top: 0;
            right: 0;
            width: 6px;
            height: 100%;
            cursor: ew-resize;
            background: transparent;
            transition: background 0.2s;
            z-index: 10;
        }
        .sidebar-resize-handle:hover,
        .sidebar-resize-handle.resizing {
            background: linear-gradient(to right, transparent, rgba(var(--primary-rgb, 59, 130, 246), 0.3));
        }

        /* スムーズスクロール */
        html { scroll-behavior: smooth; }

        /* コードコピーボタン */
        .code-block-wrapper { position: relative; }
        .copy-btn {
            position: absolute;
            top: 8px;
            right: 8px;
            opacity: 0;
            transition: opacity 0.2s;
        }
        .code-block-wrapper:hover .copy-btn { opacity: 1; }

        /* ヘッダー情報リッチデザイン */
        .header-rich {
            background: linear-gradient(135deg,
                var(--primary-700, #1d4ed8) 0%,
                var(--primary-500, #3b82f6) 50%,
                var(--primary-400, #60a5fa) 100%);
            position: relative;
            overflow: hidden;
        }
        .header-rich::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background:
                linear-gradient(45deg, transparent 30%, rgba(255, 255, 255, 0.05) 50%, transparent 70%),
                repeating-linear-gradient(90deg, transparent, transparent 2px, rgba(255, 255, 255, 0.03) 2px, rgba(255, 255, 255, 0.03) 4px);
            animation: bgSlide 10s linear infinite;
        }
        @keyframes bgSlide {
            0% { transform: translateX(0); }
            100% { transform: translateX(50px); }
        }

        .header-rich-shadow {
            box-shadow:
                0 4px 6px -1px rgba(var(--primary-rgb, 59, 130, 246), 0.2),
                0 10px 25px -5px rgba(var(--primary-rgb, 59, 130, 246), 0.3),
                0 0 50px rgba(var(--primary-rgb, 59, 130, 246), 0.15);
        }

        .icon-rotate-hover {
            transition: transform 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }
        .icon-rotate-hover:hover {
            transform: rotate(360deg) scale(1.2);
        }
    </style>
</head>
<body class="font-sans bg-slate-50 text-slate-800 antialiased">
    <!-- ヘッダー/ナビゲーションバー -->
    <header class="fixed top-0 left-0 right-0 z-50 text-white header-rich header-rich-shadow">
        <nav class="max-w-screen-2xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
            <div class="flex items-center justify-between py-3">
                <!-- 左側: ロゴとタイトルセクション -->
                <div class="flex items-center gap-4">
                    <!-- アイコン -->
                    <div class="relative group">
                        <div class="absolute inset-0 bg-gradient-to-br from-yellow-400/30 to-orange-400/30 rounded-2xl blur-lg group-hover:blur-xl transition-all"></div>
                        <div class="relative w-14 h-14 bg-white/10 rounded-xl flex items-center justify-center backdrop-blur-sm border border-white/20">
                            <i class="fab fa-[技術アイコン] text-3xl icon-rotate-hover drop-shadow-lg"></i>
                        </div>
                    </div>

                    <!-- タイトルとメタ情報 -->
                    <div class="flex flex-col gap-1">
                        <div class="flex items-center gap-2">
                            <span class="text-xl font-bold tracking-wide drop-shadow-md">[技術名]学習教材</span>
                            <span class="hidden sm:inline-flex items-center gap-1 px-2 py-0.5 bg-white/20 rounded-md text-[10px] font-semibold uppercase tracking-wider">
                                <i class="fas fa-star text-yellow-300 text-[8px]"></i>
                                [難易度]
                            </span>
                        </div>
                        <div class="flex items-center gap-3 text-[11px] text-white/90 font-medium">
                            <div class="flex items-center gap-1">
                                <i class="fas fa-code text-[9px]"></i>
                                <span>[カテゴリ]</span>
                            </div>
                            <div class="hidden sm:flex items-center gap-1">
                                <i class="fas fa-clock text-[9px]"></i>
                                <span>推奨 [時間]分</span>
                            </div>
                            <div class="hidden lg:flex items-center gap-1">
                                <i class="fas fa-language text-[9px]"></i>
                                <span>日本語</span>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 右側: モバイルメニューボタン -->
                <button id="mobile-menu-btn" class="md:hidden w-10 h-10 flex items-center justify-center rounded-lg hover:bg-white/20 transition-all active:scale-95">
                    <i class="fas fa-bars text-lg"></i>
                </button>
            </div>
        </nav>
    </header>

    <!-- メインレイアウト -->
    <div class="flex min-h-screen pt-20">
        <!-- サイドバー -->
        <aside id="sidebar" class="fixed md:sticky top-20 left-0 z-40 w-80 h-[calc(100vh-5rem)]
                                   bg-white border-r border-slate-200 overflow-y-auto flex-shrink-0
                                   transform -translate-x-full md:translate-x-0 sidebar-transition sidebar-resizable"
               style="--sidebar-width: 320px;">
            <!-- リサイズハンドル -->
            <div id="sidebar-resize-handle" class="sidebar-resize-handle hidden md:block"></div>
            <div class="p-4">
                <!-- 進捗インジケーター -->
                <div class="mb-6 p-4 bg-primary-50 rounded-xl">
                    <div class="flex items-center justify-between mb-2">
                        <span class="text-sm font-medium text-primary-700">学習進捗</span>
                        <span class="text-sm text-primary-600">3/10章</span>
                    </div>
                    <div class="w-full bg-primary-100 rounded-full h-2">
                        <div class="bg-primary-500 h-2 rounded-full transition-all duration-300" style="width: 30%"></div>
                    </div>
                </div>

                <!-- 章リスト -->
                <nav>
                    <h2 class="text-xs font-semibold text-slate-500 uppercase tracking-wider mb-3 px-2">
                        学習章
                    </h2>
                    <ul class="space-y-1">
                        <!-- アクティブな章 -->
                        <li>
                            <a href="[章1ファイル名].html"
                               class="flex items-center gap-3 px-3 py-2.5 rounded-lg
                                      bg-primary-100 text-primary-700 font-medium">
                                <span class="flex-shrink-0 w-6 h-6 flex items-center justify-center
                                             bg-primary-500 text-white text-xs rounded-full">1</span>
                                <span class="truncate">[章1タイトル]</span>
                            </a>
                        </li>
                        <!-- 通常の章 -->
                        <li>
                            <a href="[章2ファイル名].html"
                               class="flex items-center gap-3 px-3 py-2.5 rounded-lg
                                      text-slate-600 hover:bg-slate-100 transition-colors">
                                <span class="flex-shrink-0 w-6 h-6 flex items-center justify-center
                                             bg-slate-200 text-slate-600 text-xs rounded-full">2</span>
                                <span class="truncate">[章2タイトル]</span>
                            </a>
                        </li>
                        <!-- 完了済みの章 -->
                        <li>
                            <a href="[章3ファイル名].html"
                               class="flex items-center gap-3 px-3 py-2.5 rounded-lg
                                      text-slate-600 hover:bg-slate-100 transition-colors">
                                <span class="flex-shrink-0 w-6 h-6 flex items-center justify-center
                                             bg-emerald-500 text-white text-xs rounded-full">
                                    <i class="fas fa-check text-[10px]"></i>
                                </span>
                                <span class="truncate">[章3タイトル]（完了）</span>
                            </a>
                        </li>
                        <!-- 必要に応じて章を追加 -->
                    </ul>
                </nav>
            </div>
        </aside>

        <!-- サイドバーオーバーレイ（モバイル用） -->
        <div id="sidebar-overlay" class="fixed inset-0 bg-black/50 z-30 hidden md:hidden"></div>

        <!-- メインコンテンツ -->
        <main class="flex-1 min-w-0">
            <div class="max-w-5xl px-4 sm:px-6 lg:px-10 py-6">
                <!-- パンくずリスト -->
                <nav class="flex items-center gap-2 text-sm text-slate-500 mb-6">
                    <a href="#" class="hover:text-primary-600 transition-colors">ホーム</a>
                    <i class="fas fa-chevron-right text-xs"></i>
                    <a href="#" class="hover:text-primary-600 transition-colors">[技術名]</a>
                    <i class="fas fa-chevron-right text-xs"></i>
                    <span class="text-slate-700">第X章</span>
                </nav>

                <!-- 章ヘッダー -->
                <header class="mb-6">
                    <div class="flex items-center gap-3 mb-2">
                        <span class="inline-flex items-center px-3 py-1 rounded-full text-sm font-medium
                                     bg-primary-100 text-primary-700">
                            第X章
                        </span>
                    </div>
                    <h1 class="text-2xl sm:text-3xl font-bold text-slate-900 mb-2">[章タイトル]</h1>
                    <p class="text-slate-600">[章の概要説明]</p>
                </header>

                <!-- 学習目標カード -->
                <div class="bg-gradient-to-r from-amber-50 to-yellow-50 border border-amber-200
                            rounded-xl p-5 mb-6">
                    <div class="flex items-start gap-4">
                        <div class="flex-shrink-0 w-10 h-10 bg-amber-400 rounded-lg
                                    flex items-center justify-center">
                            <i class="fas fa-lightbulb text-white"></i>
                        </div>
                        <div>
                            <h2 class="text-lg font-semibold text-amber-800 mb-3">この章で学ぶこと</h2>
                            <ul class="space-y-2">
                                <li class="flex items-start gap-2 text-amber-900">
                                    <i class="fas fa-check-circle text-amber-500 mt-1 flex-shrink-0"></i>
                                    <span>[学習項目1]</span>
                                </li>
                                <li class="flex items-start gap-2 text-amber-900">
                                    <i class="fas fa-check-circle text-amber-500 mt-1 flex-shrink-0"></i>
                                    <span>[学習項目2]</span>
                                </li>
                                <li class="flex items-start gap-2 text-amber-900">
                                    <i class="fas fa-check-circle text-amber-500 mt-1 flex-shrink-0"></i>
                                    <span>[学習項目3]</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- セクションコンテンツ -->
                <section class="prose prose-slate max-w-none">
                    <h2 class="flex items-center gap-3 text-xl font-semibold text-slate-800
                               border-l-4 border-primary-500 pl-4 mb-4">
                        X.1 [セクションタイトル]
                    </h2>
                    <p class="text-slate-600 leading-relaxed">
                        [説明文をここに記述します。]
                    </p>

                    <!-- コードブロック -->
                    <div class="code-block-wrapper my-6">
                        <div class="flex items-center justify-between bg-slate-800 px-4 py-2 rounded-t-lg">
                            <span class="text-slate-400 text-sm">[ファイル名].py</span>
                            <button class="copy-btn text-slate-400 hover:text-white transition-colors"
                                    onclick="copyCode(this)">
                                <i class="fas fa-copy"></i>
                            </button>
                        </div>
                        <pre class="!mt-0 !rounded-t-none"><code class="language-python"># サンプルコード
def hello_world():
    print("Hello, World!")

hello_world()</code></pre>
                    </div>
                </section>

                <!-- 実習カード -->
                <div class="bg-gradient-to-r from-purple-50 to-fuchsia-50 border border-purple-200
                            rounded-xl p-5 my-6">
                    <div class="flex items-start gap-4">
                        <div class="flex-shrink-0 w-10 h-10 bg-purple-500 rounded-lg
                                    flex items-center justify-center">
                            <i class="fas fa-code text-white"></i>
                        </div>
                        <div class="flex-1">
                            <h3 class="text-lg font-semibold text-purple-800 mb-3">
                                実習 X-1: [実習タイトル]
                            </h3>
                            <p class="text-purple-900 mb-4">[実習の目的・概要]</p>

                            <h4 class="font-medium text-purple-800 mb-2">手順</h4>
                            <ol class="space-y-3 mb-4">
                                <li class="flex items-start gap-3 text-purple-900">
                                    <span class="flex-shrink-0 w-6 h-6 bg-purple-200 rounded-full
                                                 flex items-center justify-center text-sm font-medium">1</span>
                                    <span>[手順1の説明]</span>
                                </li>
                                <li class="flex items-start gap-3 text-purple-900">
                                    <span class="flex-shrink-0 w-6 h-6 bg-purple-200 rounded-full
                                                 flex items-center justify-center text-sm font-medium">2</span>
                                    <span>[手順2の説明]</span>
                                </li>
                            </ol>

                            <h4 class="font-medium text-purple-800 mb-2">実行例</h4>
                            <pre class="!bg-slate-800 !rounded-lg"><code class="language-python"># 実習コード
result = calculate_sum([1, 2, 3, 4, 5])
print(f"合計: {result}")</code></pre>

                            <h4 class="font-medium text-purple-800 mt-4 mb-2">期待される結果</h4>
                            <div class="bg-white/50 rounded-lg p-3 text-purple-900">
                                <code>合計: 15</code>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 理解度確認クイズ -->
                <div class="bg-gradient-to-r from-blue-50 to-cyan-50 border border-blue-200
                            rounded-xl p-5 my-6">
                    <div class="flex items-start gap-4">
                        <div class="flex-shrink-0 w-10 h-10 bg-blue-500 rounded-lg
                                    flex items-center justify-center">
                            <i class="fas fa-question text-white"></i>
                        </div>
                        <div class="flex-1">
                            <h3 class="text-lg font-semibold text-blue-800 mb-4">理解度確認クイズ</h3>
                            <ol class="space-y-4">
                                <li class="text-blue-900">
                                    <p class="font-medium mb-2">Q1. [問題文1]</p>
                                    <details class="mt-2">
                                        <summary class="cursor-pointer text-blue-600 hover:text-blue-700">
                                            回答を表示
                                        </summary>
                                        <p class="mt-2 pl-4 text-blue-800 bg-white/50 rounded-lg p-3">
                                            [回答1]
                                        </p>
                                    </details>
                                </li>
                                <li class="text-blue-900">
                                    <p class="font-medium mb-2">Q2. [問題文2]</p>
                                    <details class="mt-2">
                                        <summary class="cursor-pointer text-blue-600 hover:text-blue-700">
                                            回答を表示
                                        </summary>
                                        <p class="mt-2 pl-4 text-blue-800 bg-white/50 rounded-lg p-3">
                                            [回答2]
                                        </p>
                                    </details>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>

                <!-- 章間ナビゲーション -->
                <nav class="flex items-center justify-between pt-6 mt-6 border-t border-slate-200">
                    <a href="[前章ファイル名].html"
                       class="group flex items-center gap-3 px-4 py-3 rounded-xl
                              bg-slate-100 hover:bg-slate-200 transition-colors">
                        <i class="fas fa-arrow-left text-slate-400 group-hover:text-slate-600
                                  transition-transform group-hover:-translate-x-1"></i>
                        <div>
                            <span class="text-xs text-slate-500 block">前の章</span>
                            <span class="text-slate-700 font-medium">[前章タイトル]</span>
                        </div>
                    </a>
                    <a href="[次章ファイル名].html"
                       class="group flex items-center gap-3 px-4 py-3 rounded-xl
                              bg-primary-500 hover:bg-primary-600 text-white transition-colors">
                        <div class="text-right">
                            <span class="text-xs text-primary-100 block">次の章</span>
                            <span class="font-medium">[次章タイトル]</span>
                        </div>
                        <i class="fas fa-arrow-right transition-transform group-hover:translate-x-1"></i>
                    </a>
                </nav>
            </div>
        </main>
    </div>

    <!-- フッター -->
    <footer class="bg-slate-800 text-slate-300">
        <div class="max-w-screen-2xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
            <div class="flex flex-col md:flex-row items-center justify-between gap-4">
                <p class="text-sm text-center md:text-left">
                    &copy; 2025 F-Circle. All rights reserved.<br>
                    本資料はAIツールを活用し、人間による編集・監修のもと作成されています。
                </p>
                <div class="flex items-center gap-4">
                    <a href="#" class="hover:text-white transition-colors">
                        <i class="fab fa-github text-xl"></i>
                    </a>
                </div>
            </div>
        </div>
    </footer>

    <!-- スクロールトップボタン -->
    <button id="scroll-top-btn"
            class="fixed bottom-6 right-6 w-12 h-12 bg-primary-500 text-white rounded-full
                   shadow-lg hover:bg-primary-600 transition-all duration-300
                   opacity-0 invisible translate-y-4"
            onclick="scrollToTop()">
        <i class="fas fa-arrow-up"></i>
    </button>

    <!-- 描画用Canvasオーバーレイ -->
    <canvas id="drawing-canvas" class="fixed inset-0 z-[100] pointer-events-none"></canvas>

    <!-- 描画ツールバー（右端） -->
    <div id="drawing-toolbar" class="fixed right-4 top-1/2 -translate-y-1/2 z-[110]
                                     bg-white/95 backdrop-blur-sm rounded-2xl shadow-2xl
                                     border border-slate-200 p-2 flex flex-col gap-1
                                     transition-all duration-300">
        <!-- ツールバー折りたたみボタン -->
        <button id="toolbar-toggle"
                class="w-10 h-10 rounded-xl bg-slate-100 hover:bg-slate-200
                       flex items-center justify-center transition-colors mb-2"
                title="ツールバーを開く">
            <i class="fas fa-chevron-left text-slate-600"></i>
        </button>

        <div id="toolbar-content" class="hidden flex-col gap-1">
            <!-- ペンツール -->
            <button id="pen-tool"
                    class="tool-btn w-10 h-10 rounded-xl bg-primary-100 text-primary-600
                           hover:bg-primary-200 flex items-center justify-center transition-colors"
                    title="ペン (P)">
                <i class="fas fa-pen"></i>
            </button>

            <!-- 消しゴムツール -->
            <button id="eraser-tool"
                    class="tool-btn w-10 h-10 rounded-xl bg-slate-100 text-slate-600
                           hover:bg-slate-200 flex items-center justify-center transition-colors"
                    title="消しゴム (E)">
                <i class="fas fa-eraser"></i>
            </button>

            <!-- 区切り線 -->
            <div class="h-px bg-slate-200 my-1"></div>

            <!-- 色選択 -->
            <div id="color-picker" class="flex flex-col gap-1">
                <button class="color-btn w-10 h-10 rounded-xl border-2 border-red-400 bg-red-500
                               hover:scale-110 transition-transform" data-color="#ef4444" title="赤"></button>
                <button class="color-btn w-10 h-10 rounded-xl border-2 border-blue-400 bg-blue-500
                               hover:scale-110 transition-transform" data-color="#3b82f6" title="青"></button>
                <button class="color-btn w-10 h-10 rounded-xl border-2 border-slate-600 bg-slate-800
                               hover:scale-110 transition-transform active-color" data-color="#1e293b" title="黒"></button>
                <button class="color-btn w-10 h-10 rounded-xl border-2 border-emerald-400 bg-emerald-500
                               hover:scale-110 transition-transform" data-color="#10b981" title="緑"></button>
                <button class="color-btn w-10 h-10 rounded-xl border-2 border-amber-400 bg-amber-500
                               hover:scale-110 transition-transform" data-color="#f59e0b" title="黄"></button>
            </div>

            <!-- 区切り線 -->
            <div class="h-px bg-slate-200 my-1"></div>

            <!-- 線の太さ -->
            <div id="stroke-width" class="flex flex-col gap-1">
                <button class="stroke-btn w-10 h-10 rounded-xl bg-slate-100 hover:bg-slate-200
                               flex items-center justify-center transition-colors" data-width="2" title="細い">
                    <div class="w-4 h-0.5 bg-slate-600 rounded-full"></div>
                </button>
                <button class="stroke-btn w-10 h-10 rounded-xl bg-slate-100 hover:bg-slate-200
                               flex items-center justify-center transition-colors active-stroke" data-width="4" title="普通">
                    <div class="w-4 h-1 bg-slate-600 rounded-full"></div>
                </button>
                <button class="stroke-btn w-10 h-10 rounded-xl bg-slate-100 hover:bg-slate-200
                               flex items-center justify-center transition-colors" data-width="8" title="太い">
                    <div class="w-4 h-2 bg-slate-600 rounded-full"></div>
                </button>
            </div>

            <!-- 区切り線 -->
            <div class="h-px bg-slate-200 my-1"></div>

            <!-- 元に戻す -->
            <button id="undo-btn"
                    class="w-10 h-10 rounded-xl bg-slate-100 text-slate-600
                           hover:bg-slate-200 flex items-center justify-center transition-colors
                           disabled:opacity-40 disabled:cursor-not-allowed"
                    title="元に戻す (Ctrl+Z)" disabled>
                <i class="fas fa-undo"></i>
            </button>

            <!-- 全消去 -->
            <button id="clear-btn"
                    class="w-10 h-10 rounded-xl bg-rose-100 text-rose-600
                           hover:bg-rose-200 flex items-center justify-center transition-colors"
                    title="全消去 (C)">
                <i class="fas fa-trash-alt"></i>
            </button>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        // Highlight.js 初期化
        hljs.highlightAll();

        // Mermaid.js 初期化
        mermaid.initialize({
            startOnLoad: true,
            theme: 'default',
            securityLevel: 'loose'
        });

        // モバイルメニュー制御
        const sidebar = document.getElementById('sidebar');
        const overlay = document.getElementById('sidebar-overlay');
        const menuBtn = document.getElementById('mobile-menu-btn');

        menuBtn?.addEventListener('click', () => {
            sidebar.classList.toggle('-translate-x-full');
            overlay.classList.toggle('hidden');
        });

        overlay?.addEventListener('click', () => {
            sidebar.classList.add('-translate-x-full');
            overlay.classList.add('hidden');
        });

        // スクロールトップボタン表示制御
        const scrollTopBtn = document.getElementById('scroll-top-btn');
        window.addEventListener('scroll', () => {
            if (window.scrollY > 300) {
                scrollTopBtn.classList.remove('opacity-0', 'invisible', 'translate-y-4');
            } else {
                scrollTopBtn.classList.add('opacity-0', 'invisible', 'translate-y-4');
            }
        });

        function scrollToTop() {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        }

        // コードコピー機能
        function copyCode(btn) {
            const code = btn.closest('.code-block-wrapper').querySelector('code').textContent;
            navigator.clipboard.writeText(code).then(() => {
                const icon = btn.querySelector('i');
                icon.classList.remove('fa-copy');
                icon.classList.add('fa-check');
                setTimeout(() => {
                    icon.classList.remove('fa-check');
                    icon.classList.add('fa-copy');
                }, 2000);
            });
        }

        // サイドバーリサイズ機能
        const resizeHandle = document.getElementById('sidebar-resize-handle');
        let isResizing = false;
        let startX, startWidth;

        resizeHandle?.addEventListener('mousedown', (e) => {
            isResizing = true;
            startX = e.clientX;
            startWidth = sidebar.offsetWidth;
            resizeHandle.classList.add('resizing');
            document.body.style.cursor = 'ew-resize';
            document.body.style.userSelect = 'none';
        });

        document.addEventListener('mousemove', (e) => {
            if (!isResizing) return;
            const diff = e.clientX - startX;
            const newWidth = Math.min(Math.max(startWidth + diff, 240), 480);
            sidebar.style.width = newWidth + 'px';
        });

        document.addEventListener('mouseup', () => {
            if (isResizing) {
                isResizing = false;
                resizeHandle.classList.remove('resizing');
                document.body.style.cursor = '';
                document.body.style.userSelect = '';
                // サイドバー幅をローカルストレージに保存
                localStorage.setItem('sidebarWidth', sidebar.offsetWidth);
            }
        });

        // ページ読み込み時にサイドバー幅を復元
        const savedWidth = localStorage.getItem('sidebarWidth');
        if (savedWidth && window.innerWidth >= 768) {
            sidebar.style.width = savedWidth + 'px';
        }

        // 描画ツールバー折りたたみ機能
        const toolbarToggle = document.getElementById('toolbar-toggle');
        const toolbarContent = document.getElementById('toolbar-content');
        let isToolbarOpen = false;

        toolbarToggle?.addEventListener('click', () => {
            isToolbarOpen = !isToolbarOpen;
            const icon = toolbarToggle.querySelector('i');

            if (isToolbarOpen) {
                toolbarContent.classList.remove('hidden');
                toolbarContent.classList.add('flex');
                icon.classList.remove('fa-chevron-left');
                icon.classList.add('fa-chevron-right');
                toolbarToggle.title = 'ツールバーを閉じる';
            } else {
                toolbarContent.classList.add('hidden');
                toolbarContent.classList.remove('flex');
                icon.classList.remove('fa-chevron-right');
                icon.classList.add('fa-chevron-left');
                toolbarToggle.title = 'ツールバーを開く';
            }
        });
    </script>

    <!-- 描画ツール（パスは配置場所に応じて調整） -->
    <!-- 例: docs/guide/で作成する場合: ../common/drawing-tool.js -->
    <!-- 例: docs/guide/tech-category/tech-name/で作成する場合: ../../../../common/drawing-tool.js -->
    <script src="../../../../common/drawing-tool.js"></script>
</body>
</html>
```

## ナビゲーション構造の説明

### ヘッダーナビゲーション
- 固定ヘッダー（`fixed`）でスクロール時も常に表示
- モバイル対応のハンバーガーメニュー
- 技術ブランドカラーで統一されたデザイン

### サイドバー
- デスクトップ：常時表示（`sticky`）
- モバイル：スライドイン/アウトで表示切替
- 進捗インジケーター付き
- 章の状態表示（アクティブ/完了/未完了）

### パンくずリスト
メインコンテンツ上部に配置し、現在位置を明示

## コンテンツコンポーネント

### 学習目標カード
```html
<div class="bg-gradient-to-r from-amber-50 to-yellow-50 border border-amber-200 rounded-xl p-6">
    <!-- 内容 -->
</div>
```

### 実習カード
```html
<div class="bg-gradient-to-r from-purple-50 to-fuchsia-50 border border-purple-200 rounded-xl p-6">
    <!-- 内容 -->
</div>
```

### 理解度確認カード
```html
<div class="bg-gradient-to-r from-blue-50 to-cyan-50 border border-blue-200 rounded-xl p-6">
    <!-- 内容 -->
</div>
```

### 警告/注意カード
```html
<div class="bg-gradient-to-r from-red-50 to-rose-50 border border-red-200 rounded-xl p-6">
    <div class="flex items-start gap-4">
        <div class="flex-shrink-0 w-10 h-10 bg-red-500 rounded-lg flex items-center justify-center">
            <i class="fas fa-exclamation-triangle text-white"></i>
        </div>
        <div>
            <h3 class="text-lg font-semibold text-red-800 mb-2">注意</h3>
            <p class="text-red-900">[警告内容]</p>
        </div>
    </div>
</div>
```

### ヒント/Tips カード
```html
<div class="bg-gradient-to-r from-emerald-50 to-teal-50 border border-emerald-200 rounded-xl p-6">
    <div class="flex items-start gap-4">
        <div class="flex-shrink-0 w-10 h-10 bg-emerald-500 rounded-lg flex items-center justify-center">
            <i class="fas fa-lightbulb text-white"></i>
        </div>
        <div>
            <h3 class="text-lg font-semibold text-emerald-800 mb-2">ヒント</h3>
            <p class="text-emerald-900">[ヒント内容]</p>
        </div>
    </div>
</div>
```

## コードハイライト使用例

### 基本的な使用方法
```html
<div class="code-block-wrapper">
    <div class="flex items-center justify-between bg-slate-800 px-4 py-2 rounded-t-lg">
        <span class="text-slate-400 text-sm">example.py</span>
        <button class="copy-btn text-slate-400 hover:text-white" onclick="copyCode(this)">
            <i class="fas fa-copy"></i>
        </button>
    </div>
    <pre class="!mt-0 !rounded-t-none"><code class="language-python">def hello():
    print("Hello, World!")</code></pre>
</div>
```

### 対応言語
`language-` プレフィックスを使用：
- `language-python` - Python
- `language-javascript` - JavaScript
- `language-java` - Java
- `language-csharp` - C#
- `language-sql` - SQL
- `language-html` - HTML
- `language-css` - CSS
- `language-json` - JSON
- `language-bash` - Bash/Shell

### HTMLコードの表示
HTMLコードブロック内のタグは必ずエスケープ：
- `<` → `&lt;`
- `>` → `&gt;`
- `&` → `&amp;`

## レスポンシブ対応

### ブレークポイント
Tailwind CSSの標準ブレークポイントを使用：
- `sm`: 640px以上
- `md`: 768px以上
- `lg`: 1024px以上
- `xl`: 1280px以上
- `2xl`: 1536px以上

### モバイルファーストの原則
デフォルトスタイルがモバイル用、メディアクエリで大画面対応：
```html
<div class="px-4 md:px-6 lg:px-8">
    <!-- モバイル: px-4, タブレット: px-6, デスクトップ: px-8 -->
</div>
```

## UX改善ポイント

1. **視覚的階層**: グラデーション背景とアイコンで各セクションを明確に区別
2. **インタラクティブ要素**: ホバーエフェクト、トランジションで操作感向上
3. **進捗表示**: サイドバーに進捗インジケーター表示
4. **コードコピー**: ワンクリックでコードコピー可能
5. **スムーズスクロール**: ページ内リンクのスムーズな移動
6. **クイズの折りたたみ**: `<details>`タグで回答を隠し、自己確認を促進
7. **スクロールトップ**: 長いページでも簡単にページ上部へ戻れる
8. **描画ツール**: 講義中にペンや消しゴムで画面上にメモを書ける

## 描画ツール（講義用メモ機能）

### 概要
講義中にHTML教材上にペンや消しゴムでメモを書くための機能です。
外部JavaScriptファイル `docs/common/drawing-tool.js` を読み込んで使用します。

### 必要なHTML要素
テンプレートに含まれるCanvas要素とツールバーが必要です：
- `#drawing-canvas` - 描画用の透過Canvasオーバーレイ
- `#drawing-toolbar` - 右端に配置されるツールバー

### スクリプトの読み込み
```html
<!-- パスは配置場所に応じて調整 -->
<script src="../common/drawing-tool.js"></script>
```

### キーボードショートカット

| キー | 機能 |
|------|------|
| `D` | ツールバー開閉（描画モードON/OFF） |
| `P` | ペンツール選択 |
| `E` | 消しゴムツール選択 |
| `C` | 全消去 |
| `Ctrl+Z` | 元に戻す |

**注**: ツールバーを開くと描画モードON、閉じるとOFFになります

### ツールバー機能

| ボタン | 説明 |
|--------|------|
| 🖊️ ペン | 自由に線を描画 |
| 🧹 消しゴム | 描画を部分的に消去 |
| 🎨 色選択 | 赤・青・黒・緑・黄の5色 |
| 📏 線の太さ | 細(2px)・普通(4px)・太い(8px) |
| ↩️ 元に戻す | 最大50ステップまで戻せる |
| 🗑️ 全消去 | すべての描画を削除 |

### 使い方
1. `D`キーまたはツールバーボタンをクリックしてツールバーを開くと、自動的に描画モードがONになります
2. ペン/消しゴムを選択
3. 色・太さを選択
4. マウスまたはタッチで描画
5. 再度`D`キーまたはツールバーボタンをクリックしてツールバーを閉じると、描画モードがOFFになり通常操作に戻ります

### 注意事項
- 描画はブラウザのリロードで消えます（永続保存なし）
- 描画モードON時はページのスクロールやリンククリックができません
- タブレットのタッチ操作にも対応しています
