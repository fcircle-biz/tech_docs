# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Communication Style

- **Language**: Always output responses and artifacts in **Japanese**, unless explicitly requested otherwise.
- **Tone**: Professional, helpful, and concise.

## Repository Overview

Japanese technical documentation repository containing structured learning materials (guides, tutorials, cheatsheets) covering IT and software development topics. All content is static HTML/Markdown served via GitHub Pages.

No build/lint/test framework - content is static HTML/Markdown validated through template standards.

## Content Architecture

### Directory Structure

- `/docs/guide/` - Comprehensive learning guides (theory-focused)
- `/docs/tutorial/` - Hands-on project-based tutorials
- `/docs/slide/` - PDF slide materials with HTML viewer
- `/docs/cheatsheet/` - Quick reference materials
- `/templates/v2/` - HTML/CSS template standards (current)
- `/specs/` - System specifications for tutorial projects
- `/work_pdf/` - Temporary folder for PDF files to be processed by slide-creator
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
| `tech-guide-creator-workflow` | Full workflow (README → ch1 → ch2+ parallel) | `@agent-tech-guide-creator-workflow [tech-name]` |
| `tech-guide-creator-step1` | Create guide README.md | `@agent-tech-guide-creator-step1 [tech-name]` |
| `tech-guide-creator-step2` | Generate chapter 1 HTML + common files | `@agent-tech-guide-creator-step2 [readme-path]` |
| `tech-guide-creator-step3` | Generate single chapter HTML | `@agent-tech-guide-creator-step3 [readme-path] [chapter]` |
| `tutorial-creator-workflow` | Full workflow (README → step1 → step2+ parallel) | `@agent-tutorial-creator-workflow [tech] [env] [db]` |
| `tutorial-creator-step1` | Create tutorial README.md | `@agent-tutorial-creator-step1 [tech] [env] [db]` |
| `tutorial-creator-step2` | Generate step 1 HTML + common files | `@agent-tutorial-creator-step2 [readme-path]` |
| `tutorial-creator-step3` | Generate single step HTML | `@agent-tutorial-creator-step3 [readme-path] [step]` |
| `folder-structure-readme-updater` | Auto-generate folder READMEs | `@agent-folder-structure-readme-updater` |
| `illustration-creator-workflow` | Full workflow (suggestions → parallel image generation & HTML insert) | `@agent-illustration-creator-workflow [directory-path]` |
| `illustration-creator-step1` | Analyze HTML guides and suggest illustrations | `@agent-illustration-creator-step1 [directory-path]` |
| `illustration-creator-step2` | Generate placeholder JPGs, insert into HTML (parallel subagents for multi-chapter) | `@agent-illustration-creator-step2 [suggestions-md-path] [chapter?]` |
| `slide-creator` | Create PDF slide viewer from work_pdf/ folder | `@agent-slide-creator [title]` |
| `cheatsheet-creator` | Generate 1-page quick reference cheatsheet | `@agent-cheatsheet-creator [tech-name] [category-path]` |

### Agent Execution Rules (IMPORTANT)

**Mandatory rules when executing agents/subagents:**

1. **No suggestions**: Do not propose optimizations or alternative approaches during processing
2. **No interruptions**: Do not stop processing to ask for user confirmation
3. **Must complete**: Follow instructions in agent definition files (`.claude/agents/*.md`) and complete processing to the end
4. **Parallel execution**: Always execute parallel processing as specified in workflows

**Prohibited examples:**
- "This will take time, which method would you prefer?" → Prohibited
- "I suggest generating a placeholder version quickly" → Prohibited
- Confirmation dialogs during processing → Prohibited

## Template Standards

HTML content must follow standards in `/templates/v2/`:

### Template Files (`html/`) - For Learning Guides
- **learning-material-template.html** - Learning material template
- **sidebar-content.js** - Sidebar generation (for guides)
- **styles.css** - Common custom styles
- **main.js** - Common functionality
- **drawing-tool.js** - Drawing tool functionality

### Template Files (`html_tutorial/`) - For Tutorials
- **tutorial-template.html** - Tutorial template
- **sidebar-content.js** - Sidebar generation (for tutorials)
- **styles.css** - Common custom styles (green header)
- **main.js** - Common functionality
- **drawing-tool.js** - Drawing tool functionality

### Template Files (`slide/`) - For PDF Slide Materials
- **index.html** - Slide viewer template
- **slide-content.js** - Slide definitions (customize per project)
- **styles.css** - Common custom styles
- **main.js** - Common functionality (PDF viewer, navigation)

### Template Files (`html_cheatsheet/`) - For Cheatsheets
- **cheatsheet-template.html** - Cheatsheet template (1-page quick reference)
- **styles.css** - Common custom styles (dark mode support)
- **main.js** - Common functionality (dark mode toggle, code copy)

### Reference Documents (`reference/`)
- **css-styles.md** - Tailwind CSS style guide
- **color-themes.md** - Technology-specific color themes
- **mermaid-patterns.md** - Mermaid diagram patterns

### Key Requirements
- Tailwind CSS CDN
- Highlight.js for code syntax
- Mermaid.js for diagrams
- Google Fonts (Noto Sans JP)
- Font Awesome for icons
- Responsive design (PC/tablet/mobile)

### Mermaid.js Syntax Rules (IMPORTANT)

When writing Mermaid diagrams, always follow these rules:

1. **No HTML entities**: `&#40;` `&#41;` `&#38;` and other HTML entities are not parsed correctly by Mermaid
2. **Parentheses handling**:
   - Half-width parentheses `()` are recognized as special characters in Mermaid, so use full-width parentheses
   - Or wrap the entire node text in double quotes: `A["Text (with parentheses)"]`
3. **Ampersand**: Use full-width `＆` instead of `&`
4. **Line breaks**: When using `<br/>` inside nodes, wrap in double quotes: `A["Line1<br/>Line2"]`

**Correct example:**
```
flowchart TD
    A["Chapter 1: Overview (current)"] --> B{OS}
    B -->|Windows| C["Windows Environment Setup"]
```

**Incorrect example (causes syntax error):**
```
flowchart TD
    A[Chapter 1: Overview<br/>&#40;current&#41;] --> B{OS}
    B -->|Windows| C[Windows Environment<br/>Setup]
```

### Text Visibility Rules (IMPORTANT)

Follow these rules to ensure text inside cards remains readable:

1. **No semi-transparent backgrounds**: Do not use `bg-white/70`, `bg-white/60`, `bg-white/50`, etc.
2. **Use opaque same-color backgrounds**: When placing inner boxes inside cards, use `-100` shade of the same color family

| Parent Card Color | Inner Box Background | Text Color |
|------------------|---------------------|------------|
| Purple | `bg-purple-100` | `text-purple-900` |
| Blue | `bg-blue-100` | `text-blue-900` |
| Green | `bg-emerald-100` | `text-emerald-900` |
| Orange | `bg-orange-100` | `text-orange-900` |

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
