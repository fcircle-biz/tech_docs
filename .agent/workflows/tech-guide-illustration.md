---
description: Generate and embed illustrations into HTML technical guides.
---

# Technical Guide Illustration Workflow

This workflow automates the process of adding visual aids to HTML learning materials. It can either analyze the HTML directly or use a pre-generated suggestion report.

## Input
- **Target**: (Required) A specific HTML file or a directory containing `[tech]-learning-material-[XX].html` files.
- **ReportPath**: (Optional) Path to an `illustration_suggestions.md` file containing pre-analyzed suggestions.

## Steps

1.  **Determine Analysis Mode**:
    - **If `ReportPath` is provided**:
        - Read the markdown report at `ReportPath`.
        - Parse the content to extract suggestions for the **Target** file(s).
        - **Parsing Rules** (for Japanese report):
            - Look for file headers: `## ファイル: [Path]` or `## File: [Path]`.
            - Extract rows from the table following the header.
            - Columns mapping:
                - `セクション / コンテキスト` -> **Location/Context**
                - `提案` -> **Subject** (Prompt Core)
                - `理由` -> **Style/Focus** (Prompt Context)
    - **If `ReportPath` is NOT provided**:
        - Analyze the **Target** HTML file(s) directly.
        - Identify 1-3 key sections per chapter (Abstract concepts, Process flows, Metaphors).

2.  **Prepare Directory Structure**:
    - Check if an `img` directory exists in the same folder as the HTML file.
    - If not, create it: `mkdir -p [path/to/html/dir]/img`.

3.  **Generate Illustrations**:
    - For each identified item (from Report or Direct Analysis):
        - **Construct Prompt**:
            - **Style**: Clean, modern, flat design, technical but friendly. Matches the color theme of the guide.
            - **Subject**: Based on the "Subject" or "Suggestion".
            - **Context**: Use the "Reasoning" or "Style/Focus" to refine the image.
            - **Text**: If text is necessary, **it MUST be in Japanese**.
            - **Format**: Landscape orientation (wide).
        - **Generate**: Call `generate_image`.
        - **Save**: Save to `img` directory with a descriptive English filename (e.g., `mvc-diagram.png`).

4.  **Embed Images**:
    - Insert the image into the HTML file.
    - **Location**:
        - If using Report: Find the text matching "Location/Context" (fuzzy match if needed).
        - If Direct Analysis: Insert after the relevant paragraph or header.
    - **HTML Structure**:
        ```html
        <figure class="my-8 text-center">
            <img src="./img/[filename]" alt="[Subject - Japanese description]" class="rounded-lg shadow-md mx-auto max-w-3xl border border-gray-200">
            <figcaption class="mt-2 text-sm text-slate-500">[Subject - Japanese description]</figcaption>
        </figure>
        ```
    - **Styling**: Ensure classes match the Tailwind CSS setup (v2/v3). Use `text-slate-500` (or `text-gray-500`) for captions.

5.  **Review**:
    - Verify that the image paths are correct relative to the HTML file.
    - Check that the layout looks good (spacing, alignment).
