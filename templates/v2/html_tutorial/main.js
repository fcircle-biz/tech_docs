/**
 * 技術教材共通JavaScript
 * PC環境判定、UI制御、ライブラリ初期化などの共通処理を提供
 */

(function() {
    'use strict';

    // PC環境判定（最初に実行）
    const isPC = window.innerWidth >= 1024;

    // 描画ツールバーとCanvasのHTML生成（PC環境のみ）
    function createDrawingToolbar() {
        // 非PC環境では生成しない
        if (!isPC) {
            return;
        }

        const toolbarHTML = `
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
        `;

        // body要素の最後に挿入
        document.body.insertAdjacentHTML('beforeend', toolbarHTML);

        // 描画ツールバー折りたたみ機能を初期化
        setTimeout(() => {
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
        }, 0);
    }

    // ページ読み込み時に描画ツールバーを生成（PC環境のみ）
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', createDrawingToolbar);
    } else {
        createDrawingToolbar();
    }

    // PC環境以外はスケーリングを100%に設定
    if (!isPC) {
        const viewportMeta = document.getElementById('viewport-meta');
        if (viewportMeta) {
            viewportMeta.setAttribute('content', 'width=device-width, initial-scale=1.0');
        }
    } else {
        // PC環境はスケーリングを110%に設定
        const viewportMeta = document.getElementById('viewport-meta');
        if (viewportMeta) {
            viewportMeta.setAttribute('content', 'width=device-width, initial-scale=1.1');
        }
    }

    // Highlight.js 初期化
    if (typeof hljs !== 'undefined') {
        hljs.highlightAll();
    }

    // Mermaid.js 初期化
    if (typeof mermaid !== 'undefined') {
        mermaid.initialize({
            startOnLoad: true,
            theme: 'default',
            securityLevel: 'loose'
        });
    }

    // スクロールトップボタン表示制御
    const scrollTopBtn = document.getElementById('scroll-top-btn');
    // 非PC環境では非表示
    if (!isPC && scrollTopBtn) {
        scrollTopBtn.style.display = 'none';
    }
    window.addEventListener('scroll', () => {
        if (scrollTopBtn) {
            if (window.scrollY > 300) {
                scrollTopBtn.classList.remove('opacity-0', 'invisible', 'translate-y-4');
            } else {
                scrollTopBtn.classList.add('opacity-0', 'invisible', 'translate-y-4');
            }
        }
    });

    // スクロールトップ関数をグローバルに公開
    window.scrollToTop = function() {
        window.scrollTo({ top: 0, behavior: 'smooth' });
    };

    // コードコピー機能をグローバルに公開
    window.copyCode = function(btn) {
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
    };

    // サイドバートグル機能
    function initSidebarToggle() {
        const toggleBtn = document.getElementById('sidebar-toggle-btn');
        const sidebar = document.getElementById('sidebar');

        if (!toggleBtn || !sidebar) return;

        // サイドバーの表示状態を管理（PC環境ではデフォルト表示）
        let isSidebarVisible = isPC;

        // 初期状態を設定
        if (isPC) {
            sidebar.classList.remove('-translate-x-full');
            sidebar.classList.add('translate-x-0');
            sidebar.style.width = '20rem'; // w-80 = 320px
        }

        toggleBtn.addEventListener('click', () => {
            isSidebarVisible = !isSidebarVisible;

            if (isSidebarVisible) {
                // サイドバーを表示
                sidebar.classList.remove('-translate-x-full');
                sidebar.classList.add('translate-x-0');
                sidebar.style.width = '20rem';
                sidebar.style.overflow = 'auto';
            } else {
                // サイドバーを非表示
                sidebar.classList.add('-translate-x-full');
                sidebar.classList.remove('translate-x-0');
                sidebar.style.width = '0';
                sidebar.style.overflow = 'hidden';
            }
        });
    }

    // DOM読み込み後にサイドバートグルを初期化（sidebar-content.jsの後に実行されるよう遅延）
    setTimeout(initSidebarToggle, 100);

})();
