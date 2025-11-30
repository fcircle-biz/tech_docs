# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

Japanese technical documentation repository containing structured learning materials (guides, tutorials, cheatsheets) covering IT and software development topics. All content is static HTML/Markdown served via GitHub Pages.

**Note:** `/docs/slide/` is deprecated and planned for removal.

No build/lint/test framework - content is static HTML/Markdown validated through template standards.

## Content Architecture

### Directory Structure

- `/docs/guide/` - Comprehensive learning guides (theory-focused)
- `/docs/tutorial/` - Hands-on project-based tutorials
- `/docs/cheatsheet/` - Quick reference materials
- `/templates/v2/` - HTML/CSS template standards (current)
- `/specs/` - System specifications for tutorial projects
- `/.claude/agents/` - Claude agent definitions for automated content creation

### 9-Level Taxonomy (from tech-knowledge-map.md)

1. Programming Languages (`programming-languages/[ecosystem]/`)
2. Web Technologies (`web-technologies/`)
3. Development Processes (`development-processes/`)
4. Design & Modeling (`design-modeling/`)
5. Cloud & Infrastructure (`cloud-infrastructure/`)
6. Data & AI (`data-ai-category/`)
7. Business SaaS (`business-saas/`)
8. Certifications (`certification/`)
9. Business Domain Knowledge (`business-domain-knowledge/`)

### File Naming Convention

```
[technology-name]-learning-material-[XX].html
```

Where `[XX]` is zero-padded 2-digit chapter number (01, 02, 03, etc.)

Example: `django-learning-material-01.html`

## Claude Agents

Available automation agents in `.claude/agents/`:

| Agent | Purpose | Trigger |
|-------|---------|---------|
| `tech-guide-creator-step1` | Create guide README.md | `@agent-tech-guide-creator-step1 [tech-name]` |
| `tech-guide-creator-step2` | Generate chapter 1 HTML + common files | `@agent-tech-guide-creator-step2 [readme-path]` |
| `tech-guide-creator-step3` | Generate chapter 2+ HTML in parallel | `@agent-tech-guide-creator-step3 [readme-path] [chapter-range]` |
| `tutorial-creator-step1` | Create tutorial README.md | `@agent-tutorial-creator-step1 [tech] [env] [db]` |
| `tutorial-creator-step2` | Generate step 1 HTML + common files | `@agent-tutorial-creator-step2 [readme-path]` |
| `tutorial-creator-step3` | Generate step 2+ HTML in parallel | `@agent-tutorial-creator-step3 [readme-path] [step-range]` |
| `folder-structure-readme-updater` | Auto-generate folder READMEs | `@agent-folder-structure-readme-updater` |

## Template Standards

HTML content must follow standards in `/templates/v2/`:

### Template Files (`html/`) - 学習教材用
- **learning-material-template.html** - 学習教材用テンプレート
- **sidebar-content.js** - サイドバー生成（学習教材用）
- **styles.css** - 共通カスタムスタイル
- **main.js** - 共通機能
- **drawing-tool.js** - 描画ツール機能

### Template Files (`html_tutorial/`) - チュートリアル用
- **tutorial-template.html** - チュートリアル用テンプレート
- **sidebar-content.js** - サイドバー生成（チュートリアル用）
- **styles.css** - 共通カスタムスタイル（ヘッダー緑色）
- **main.js** - 共通機能
- **drawing-tool.js** - 描画ツール機能

### Reference Documents (`reference/`)
- **css-styles.md** - Tailwind CSSスタイルガイド
- **color-themes.md** - 技術別カラーテーマ一覧
- **mermaid-patterns.md** - Mermaid図パターン集

### Key Requirements
- Tailwind CSS CDN
- Highlight.js for code syntax
- Mermaid.js for diagrams
- Google Fonts (Noto Sans JP)
- Font Awesome for icons
- Responsive design (PC/tablet/mobile)

### Usage
1. Copy template to target folder
2. Copy JS/CSS files (`sidebar-content.js`, `styles.css`, `main.js`, `drawing-tool.js`) to same folder
3. Edit `sidebar-content.js` for chapter/step definitions
4. Update color theme in `tailwind.config`

## Version Management

- First version: Create files directly in category folder
- Subsequent versions: Create versioned subfolders (v1/, v2/, v3/)
- Move previous content to versioned folder when creating new version

**Note:** `v1/`, `v2/` etc. folders within guide directories (e.g., `docs/guide/.../java/v1/`) are past version backups, not active content.

## GitHub Pages URLs

Format: `https://fcircle-biz.github.io/tech_docs/[content-type]/[category-path]/[filename].html`

Example: `https://fcircle-biz.github.io/tech_docs/guide/programming-languages/python-ecosystem/django/django-learning-material-01.html`
