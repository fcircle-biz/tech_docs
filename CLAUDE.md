# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Architecture

This is a technical documentation repository that provides educational content for software development and IT topics. The repository generates static HTML learning materials using specialized agents for content creation.

### Main Directory Structure

- **`docs/`** - Core documentation content
  - `cheatsheet/` - Interactive HTML cheat sheets organized by technology category
  - `guide/` - Comprehensive learning guidelines (README.md format)
  - `tutorial/` - Step-by-step practical tutorials
  - `prompt/` - AI assistant prompts for various programming tasks
  - `handson/` - Hands-on practice materials
  - `report/` - Research reports and analysis documents

- **`specs/`** - Technical specifications and requirements
  - `user-management/` - Reference specifications for tutorial creation

- **`templates/`** - Content creation templates
  - `html-template.md` - Standard HTML structure for learning materials
  - `css-styles.md` - Styling guidelines
  - `color-themes.md` - Color theme specifications

- **`.claude/agents/`** - Specialized content creation agents
  - `tech-guide-creator-step1.md` - Creates learning guidelines (README.md)
  - `tech-guide-creator-step2.md` - Generates HTML learning materials
  - `tutorial-creator-step1.md` - Creates practical tutorials (README.md)
  - `tutorial-creator-step2.md` - Generates HTML tutorial materials

## Content Creation Workflow

### Creating Learning Guidelines
1. Use `@agent-tech-guide-creator-step1` to create structured learning guidelines in `docs/guide/[category]/[technology]/README.md`
2. Use `@agent-tech-guide-creator-step2` to generate corresponding HTML learning materials

### Creating Tutorials
1. Use `@agent-tutorial-creator-step1` to create practical tutorials in `docs/tutorial/[technology]/README.md` 
2. Use `@agent-tutorial-creator-step2` to generate interactive HTML tutorial materials

### Content Standards

#### File Naming Conventions
- Learning materials: `[technology]-learning-material-[chapter].html`
- Tutorial steps: `step[number]-[description].html`
- Directories: lowercase with hyphens, organized by technology category

#### HTML Structure Requirements
- Use Bootstrap 5 framework
- Include Google Fonts (Noto Sans JP)
- Follow established CSS class naming patterns
- Include navigation between chapters/steps
- Add learning objectives, exercises, and comprehension checks

#### Technology Categories
- `java-ecosystem/` - Java, Spring, JSP, JDBC, JUnit, Struts
- `frontend/` - JavaScript, HTML/CSS, React
- `database/` - SQL, Oracle, PostgreSQL, PL/SQL, DB2
- `web/` - PHP, ASP.NET
- `data-analytics/` - R, SAS, Python data analysis
- `office/` - VBA, Excel automation
- `systems-environments/` - COBOL, Linux

## GitHub Integration

The repository uses GitHub Actions (`.github/workflows/claude.yml`) for automated Claude PR assistance. The workflow triggers on:
- Issue comments containing `@claude`
- Pull request review comments containing `@claude`
- New issues mentioning `@claude`

## Development Guidelines

### When Creating Content
1. Always reference existing templates in `templates/` directory
2. Follow the user-management specifications in `specs/` as reference for tutorial content
3. Use appropriate technology category directories
4. Maintain consistent HTML structure and styling
5. Update main README.md when adding new content

### When Using Agents
- Prefer using specialized agents (`@agent-*`) for content creation over manual writing
- Provide clear technology context when invoking agents
- Ensure generated content follows established patterns and standards

### Content Quality Standards
- All learning materials must include practical exercises
- Include clear learning objectives and prerequisites
- Provide step-by-step instructions for tutorials
- Use consistent terminology and formatting
- Ensure content is beginner-friendly while maintaining technical accuracy

## Special Considerations

- The repository focuses on Japanese-language content (`lang="ja"`)
- All HTML materials are designed for GitHub Pages deployment
- Content should be structured for progressive learning (beginner to intermediate)
- Security best practices should be integrated into all programming tutorials
- No package.json or build scripts - content is static HTML with CDN dependencies