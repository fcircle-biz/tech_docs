/**
 * 技術教材共通JavaScript
 * PC環境判定、UI制御、ライブラリ初期化などの共通処理を提供
 */

(function() {
    'use strict';

    // PC環境判定とUI調整
    const isPC = window.innerWidth >= 1024;

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

    // 描画ツールバーの表示制御（PC環境のみ表示）
    const drawingToolbar = document.getElementById('drawing-toolbar');
    if (drawingToolbar) {
        if (!isPC) {
            drawingToolbar.style.display = 'none';
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

})();
