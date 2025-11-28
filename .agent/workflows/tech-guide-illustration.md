---
description: Generate and embed illustrations into HTML technical guides.
---

# Technical Guide Illustration Workflow

This workflow automates the process of adding visual aids to the HTML learning materials created by the `tech-guide-creation` workflow.

## Input
- **Target**: A specific HTML file or a directory containing `[tech]-learning-material-[XX].html` files.

## Steps

1.  **Analyze Content for Visual Opportunities**:
    - Read the target HTML file(s).
    - Identify key sections that require visual explanation:
        - Abstract concepts (e.g., "How API requests work").
        - Process flows (e.g., "Data flow in MVC").
        - Metaphors (e.g., "Variables as boxes").
    - **Goal**: Select 1-3 high-impact locations per chapter.

2.  **Prepare Directory Structure**:
    - Check if an `img` directory exists in the same folder as the HTML file.
    - If not, create it: `mkdir -p [path/to/html/dir]/img`.

3.  **Generate Illustrations**:
    - For each identified location:
        - **Construct Prompt**: Create a detailed prompt for the `generate_image` tool.
            - **Style**: Clean, modern, flat design, technical but friendly. Matches the color theme of the guide.
            - **Subject**: Clearly depict the concept. Avoid text if possible (or keep it very simple). If text is necessary, **it MUST be in Japanese**.
            - **Format**: Landscape orientation (wide).
        - **Generate**: Call `generate_image`.
        - **Save**: Save the image to the `img` directory with a descriptive name (e.g., `mvc-diagram.png`, `api-flow.png`).

4.  **Embed Images**:
    - Insert the image into the HTML file at the identified location.
    - **HTML Structure**:
        ```html
        <figure class="my-8 text-center">
            <img src="./img/[filename]" alt="[Descriptive Alt Text]" class="rounded-lg shadow-md mx-auto max-w-3xl border border-gray-200">
            <figcaption class="mt-2 text-sm text-gray-500">[Caption explaining the image]</figcaption>
        </figure>
        ```
    - **Styling**: Ensure classes match the Tailwind CSS setup (v2).

5.  **Review**:
    - Verify that the image paths are correct relative to the HTML file.
    - Check that the layout looks good (spacing, alignment).
