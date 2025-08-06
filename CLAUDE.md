# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Japanese technical documentation repository (`tech_docs`) that provides HTML-based learning materials, tutorials, and cheat sheets for various programming technologies and software development topics.

## Repository Structure

### Core Content Types

1. **Tutorials** (`docs/tutorial/`) - Step-by-step practical tutorials organized by technology ecosystem
2. **Learning Guides** (`docs/guide/`) - Comprehensive learning curricula organized by technology stack
3. **Cheat Sheets** (`docs/cheatsheet/`) - Quick reference materials in HTML format
4. **AI Prompts** (`docs/prompt/`) - AI assistant prompts for various development tasks

### Technology Ecosystems

The repository is organized into technology ecosystems:
- Java (Spring Boot, JSP/Servlet, JDBC, JUnit, Struts)
- Python (Django, FastAPI, Streamlit, SQLAlchemy, SQLModel)
- JavaScript (React, Node.js, beginner/intermediate guides)
- .NET (ASP.NET, VB.NET, C#)
- PHP (Core PHP development)
- Database (SQL, Oracle, PostgreSQL, DB2, PL/SQL)
- Others (R, SAS, COBOL, VBA)

### Key Directories

- `specs/user-management/` - Reference specifications for user management system tutorials
- `templates/` - HTML templates and styling guides for creating educational content
- `eco-system.md` - Technology ecosystem mapping reference

## Content Creation Standards

### HTML Learning Materials

All educational content follows standardized HTML templates using:
- Bootstrap 5 for responsive design
- Highlight.js for syntax highlighting (atom-one-dark theme)
- Google Fonts (Noto Sans JP) for Japanese text
- Consistent navigation and chapter structure

### Template Structure

When creating new learning materials, follow the template in `templates/html-template.md`:
- Chapter-based organization with navigation
- Learning objectives section
- Hands-on exercises (`exercise-container` class)
- Comprehension quizzes (`quiz-container` class)
- Code examples with proper language highlighting

### Code Highlighting

Important language mappings for Highlight.js:
- Gradle files: `language-bash`
- Properties files: `language-ini`
- Dockerfiles: `language-bash`
- HTML content must be escaped (`<` → `&lt;`, `>` → `&gt;`)

## Development Workflow

### Creating New Content

1. **Tutorials**: Use user management system specs in `specs/user-management/` as reference
2. **Guides**: Follow the established ecosystem structure in `docs/guide/`
3. **Templates**: Reference `templates/` directory for styling and structure
4. **Consistency**: Maintain Japanese language consistency and technical accuracy

### Content Organization

- Each technology has dedicated directories with README.md outlining the curriculum
- HTML files follow sequential naming (chapter1.html, chapter2.html, etc.)
- All content is self-contained with CDN resources (no local dependencies)

## Repository Maintenance

### File Management

- No build tools or package managers required
- Content is static HTML served directly
- All dependencies loaded via CDN
- Images stored in technology-specific `img/` directories

### Quality Standards

- Japanese language primary, with English technical terms
- Beginner-friendly explanations with practical examples
- Consistent visual design across all materials
- Mobile-responsive layouts

## Publishing

- Content published via GitHub Pages at https://fcircle-biz.github.io/tech_docs/
- Direct HTML serving - no build process required
- Update README.md when adding new content sections