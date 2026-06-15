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
- `/docs/practice/` - Practice exercises and quizzes
- `/docs/assignment/` - Programming assignments (specs-based practical exercises)
- `/docs/slide/` - PDF slide materials with HTML viewer
- `/docs/cheatsheet/` - Quick reference materials
- `/templates/v2/` - HTML/CSS template standards (current)
- `/specs/` - System specifications for tutorial projects
- `/work_pdf/` - Temporary folder for PDF files to be processed by the slide-creator skill
- `/.claude/skills/` - Claude skill definitions for automated content creation (slash-command invoked)

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

**Learning Guides:**
```
[technology-name]-learning-material-[XX].html
```

**Practice Exercises:**
```
[technology-name]-practice-[XX].html
```

Where `[XX]` is zero-padded 2-digit chapter/round number (01, 02, 03, etc.)

Examples:
- `django-learning-material-01.html`
- `python-basics-practice-01.html`

## Skills (Content Automation)

Content automation is implemented as **Skills** in `.claude/skills/` (migrated from the former `.claude/agents/` subagents). Invoke a skill as a slash command: `/<skill-name> [args]`. Each skill keeps a lean `SKILL.md` and pushes detailed procedures into its `references/` directory (progressive disclosure).

### Content creator skills (multi-agent built in)

Each of these consolidates the old `workflow + step1/step2/step3` agents into a **single skill that orchestrates multiple subagents internally**. The skill runs the **preparation phase sequentially** (README → common JS/CSS + chapter/step/round `01` HTML), then **fans out the remaining units (chapter/step/round `02..N`) in parallel** by issuing several `Agent` tool calls (`subagent_type: general-purpose`, instructed to read the skill's `references/`) in a single message, then verifies and reports.

| Skill | Purpose | Invocation |
|-------|---------|------------|
| `tech-guide-creator` | Learning guide set (README + common files + all chapters) | `/tech-guide-creator [tech-name]` |
| `tutorial-creator` | Hands-on tutorial from specs (README + step HTML) | `/tutorial-creator [app-type] [env] [db]` |
| `practice-creator` | Practice exercise set (`<details>`-toggle answers) | `/practice-creator [tech-name]` |
| `assignment-creator` | Programming assignment from specs (hints only, PDF design docs) | `/assignment-creator [specs-docs-path]` |
| `illustration-creator` | Add illustrations to existing guides (per-chapter parallel; replace mode is semi-automatic) | `/illustration-creator [dir] [chapter?] [mode?]` |

### Single-purpose utility skills

| Skill | Purpose | Invocation |
|-------|---------|------------|
| `cheatsheet-creator` | 1-page quick-reference cheatsheet | `/cheatsheet-creator [tech-name] [category-path]` |
| `slide-creator` | PDF slide viewer from `work_pdf/` | `/slide-creator [title]` |
| `folder-structure-readme-updater` | Regenerate the root `README.md` from the on-disk structure | `/folder-structure-readme-updater` |

### Multi-agent orchestration skills

| Skill | Purpose | Invocation |
|-------|---------|------------|
| `content-reviewer` | Parallel verification of generated material against template standards; `--fix` applies corrections | `/content-reviewer [dir-or-files] [--fix]` |
| `content-suite-creator` | Generate multiple material types for one topic in parallel, then verify with `content-reviewer` | `/content-suite-creator [tech-name] [types-csv?]` |

### Supporting utility skills

`create-placeholder-image`, `md-to-pdf`, `re-estimate-learning-time` — used by the creator skills (placeholder images, design-doc PDF conversion, learning-time re-estimation) and invocable directly.

### Skill Execution Rules (IMPORTANT)

**Mandatory rules when running a content-automation skill (and its subagents):**

1. **No suggestions**: Do not propose optimizations or alternative approaches during processing.
2. **No interruptions**: Do not stop to ask for user confirmation (sole exception: `content-suite-creator` may confirm missing specs/env/DB info during argument parsing, before generation starts).
3. **Must complete**: Follow the skill's `SKILL.md` and `references/*.md` and finish to the end — never stop at "I will now generate…" before the files actually exist.
4. **Parallel execution**: Issue the fan-out `Agent` calls for units `02..N` **in a single message** so they run in parallel — never one unit at a time.

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

### Template Files (`html_practice/`) - For Practice Exercises
- **practice-template.html** - Practice exercise template
- **sidebar-content.js** - Sidebar generation (for practice rounds)
- **styles.css** - Common custom styles (question cards, answer toggle)
- **main.js** - Common functionality (answer display toggle, dark mode)
- **drawing-tool.js** - Drawing tool functionality

### Template Files (`html_assignment/`) - For Programming Assignments
- **assignment-template.html** - Assignment template (specs-based practical exercises)
- **sidebar-content.js** - Sidebar generation (for assignment steps)
- **styles.css** - Common custom styles (orange header for assignments)
- **main.js** - Common functionality
- **drawing-tool.js** - Drawing tool functionality

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
