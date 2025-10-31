# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Japanese technical documentation repository containing comprehensive programming guides, tutorials, cheat sheets, and AI prompts. The repository focuses on creating HTML-based educational materials for various programming languages, frameworks, and technologies.

**Technology & Knowledge Map**: See [tech-knowledge-map.md](tech-knowledge-map.md) for a comprehensive overview of all technology domains, certifications, and business knowledge areas covered in this repository.

## Key Architecture Components

### Documentation Structure
- **docs/guide/**: Structured learning guides organized by technology ecosystem (10-chapter curricula)
- **docs/tutorial/**: Step-by-step practical tutorials with hands-on projects (6-10 chapters)
- **docs/slide/**: Slide-format educational materials
- **docs/cheatsheet/**: Quick reference materials in HTML format
- **docs/prompt/**: AI assistant prompts for various programming domains
- **specs/**: Reference specifications (e.g., user-management system specs)
- **templates/**: HTML templates and styling systems

### Technology Ecosystems
The repository is organized around major technology ecosystems:
- **Java**: Spring Boot, JSP/Servlet, JDBC, Struts, JUnit
- **Python**: Django, FastAPI, Streamlit, SQLAlchemy, SQLModel
- **JavaScript**: React, Next.js, vanilla JavaScript
- **.NET**: ASP.NET, ASP.NET Core, VB.NET
- **PHP**: Core PHP development
- **Database**: SQL, Oracle, PL/SQL, PostgreSQL, DB2
- **Data Analysis**: R, SAS, statistical analysis
- **Legacy**: COBOL for mainframe systems

### Folder Structure Classification System

**CRITICAL**: All new educational content MUST follow the 9-category classification system defined in `tech-knowledge-map.md` and `docs/guide/README.md`:

1. **Programming Languages** (`programming-languages/[ecosystem]/[technology]/`)
   - Examples: `python-ecosystem/django/`, `java-ecosystem/spring/`, `dotnet-ecosystem/aspnet-vb/`

2. **Web Technologies** (`web-technologies/[technology]/`)
   - Example: `html-css/`

3. **Development Processes** (`development-processes/[technology]/`)
   - Examples: `agile-development/`, `devops/`, `waterfall-development/`

4. **Design & Modeling** (`design-modeling/[category]/[technology]/`)
   - Examples: `software-design/uml/`, `software-design/requirements-engineering/`

5. **Cloud & Infrastructure** (`cloud-infrastructure/[technology]/`)
   - Examples: `aws/`, `docker/`, `cloud-computing/`

6. **Data & AI** (`data-ai-category/[category]/[technology]/`)
   - Examples: `database/sql/`, `data-ai/machine-learning/`, `statistical-analysis/`

7. **Business SaaS** (`business-saas/[technology]/`)
   - Examples: `excel-basic/`, `vba/`

8. **Certification** (`certification/[exam-name]/`)
   - Example: `it-passport/`

9. **Business Domain Knowledge** (`business-domain-knowledge/[domain]/`)
   - Examples: `finance-accounting/`, `business-docs/`

## Common Development Commands

### HTML to PDF Conversion
```bash
# Convert single HTML file to PDF
./templates/pdf_html/convert-html-to-pdf.sh input.html

# Batch convert directory
./templates/pdf_html/convert-html-to-pdf.sh -d ./slides/ -o ./pdf/

# High resolution conversion
./templates/pdf_html/convert-html-to-pdf.sh input.html -q 1920x1080

# Auto-merge multiple PDFs
./templates/pdf_html/convert-html-to-pdf.sh -d ./slides/ -m --merge-name presentation.pdf
```

### HTML Dimension Analysis
```bash
# Analyze HTML slide dimensions (requires Node.js)
cd templates/pdf_html/
npm run height input.html
```

### Content Generation Workflow
The repository uses specialized agents for content creation:
- `slide-creator-step1`: Creates initial slide-format learning materials
- `slide-creator-step2`: Generates HTML slides from README guides
- `slide-creator-step3`: Optimizes slide dimensions and regenerates PDFs
- `tutorial-creator-step1`: Creates hands-on tutorial materials
- `tutorial-creator-step2`: Converts guides to interactive HTML tutorials
- `tech-guide-creator-step1`: Creates comprehensive learning guidelines
- `tech-guide-creator-step2`: Converts guidelines to HTML format
- `folder-structure-readme-updater`: Updates README.md with folder structure changes

## Content Creation Guidelines

### Tutorial Structure
All tutorials follow a consistent 6-10 chapter format:
1. Environment Setup
2. Architecture/Framework Introduction
3. Database Design/Connection
4. User Registration Feature
5. User List/Detail Display
6. User Update/Delete Operations
7. Advanced Features (Security, Testing)

### Learning Guide Format
Each technology guide contains:
- 10-chapter progressive curriculum
- Practical exercises and examples
- Code snippets and explanations
- Best practices and common pitfalls

### HTML Template Usage
When creating new slide materials:
1. Use existing templates from `templates/pdf_html/templates/`
2. Maintain 1280×720px dimensions
3. Follow the established color scheme
4. Include proper navigation and page numbering
5. Ensure accessibility with proper heading structure

### File Naming Conventions
- Learning materials: `[tech-name]-learning-material-[chapter-number].html`
- Slide materials: `[tech-name]-slide-[number].html`
- Tutorial chapters: `[tech-name]-tutorial-[chapter-number].html`
- Use lowercase and hyphens (kebab-case)
- Chapter numbers start from 1

### GitHub Pages URL Format
All educational content is deployed to GitHub Pages:
- Base URL: `https://fcircle-biz.github.io/tech_docs/`
- Guide format: `guide/[classification-path]/[file-name].html`
- Tutorial format: `tutorial/[classification-path]/[file-name].html`
- Slide format: `slide/[classification-path]/[file-name].html`

## Special Considerations

### Japanese Language Content
- All educational content is in Japanese
- Maintain proper Japanese technical terminology
- Follow Japanese documentation conventions
- Code comments should be in Japanese where appropriate

### Cross-Platform Compatibility
- HTML templates work across all browsers
- PDF conversion requires `wkhtmltopdf` tool
- Responsive design for various screen sizes
- Font fallbacks for different operating systems

### Technology-Specific Customization
When creating content for different technologies:
- Java: Use orange color scheme (#ED8B00), `fab fa-java` icon
- Python: Use blue color scheme (#3776AB), `fab fa-python` icon
- React: Use cyan color scheme (#61DAFB), `fab fa-react` icon
- .NET: Use purple color scheme (#512BD4), Microsoft-specific icons

## Quality Standards

### Content Validation
- All code examples must be functional
- Step-by-step instructions should be tested
- Screenshots should be current and relevant
- Links should be verified and working

### Consistency Requirements
- Follow established naming conventions
- Maintain consistent file structure
- Use standardized headers and footers
- Ensure proper cross-referencing between materials

### Link Management
**CRITICAL**: When adding cross-references between guides:
1. ALWAYS verify the target file/directory exists before adding the link
2. Use only links to existing educational materials in the repository
3. Remove or avoid creating links to non-existent future materials
4. Use relative paths for internal links within the same category
5. Use full GitHub Pages URLs for cross-category references

This repository serves as a comprehensive resource for Japanese-speaking developers learning various programming technologies through structured, hands-on approaches.
