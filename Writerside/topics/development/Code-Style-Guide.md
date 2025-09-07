# Code Style Guide

A consistent code style is crucial for a project's readability and maintainability. It reduces cognitive load by ensuring that all code follows the same patterns. This guide outlines the coding style and conventions for this project.

Our primary principle is to rely on **automated tools** to enforce formatting. This eliminates debates over style and ensures consistency automatically.

## General Principles

-   **Language**: All code, comments, variable names, and documentation must be written in **English**.
-   **Line Length**: Keep lines to a reasonable length, typically around 100-120 characters, to improve readability.

## Frontend (TypeScript/JavaScript)

For all frontend code, we use [Prettier](https://prettier.io/) as our opinionated code formatter and [ESLint](https://eslint.org/) for identifying and reporting on patterns in the code.

-   **Configuration**: The rules for both tools are defined in the `.prettierrc` and `.eslintrc.js` files in the `frontend/` directory.
-   **Enforcement**: A pre-commit hook is set up to automatically format your staged files before you commit.

### How to Use

You can manually run the formatter and linter using these npm scripts:

```bash
# In the frontend/ directory

# Check for formatting and linting errors
npm run lint

# Automatically fix all fixable errors
npm run lint:fix
```

### Naming Conventions

-   **Files**: Use `kebab-case` for files (e.g., `user-profile.tsx`), except for component files which should be `PascalCase`.
-   **Components**: Use `PascalCase` for React components (e.g., `UserProfile`).
-   **Variables & Functions**: Use `camelCase` (e.g., `const userProfile = ...`).
-   **Constants**: Use `UPPER_CASE` for constants that are hard-coded and reused (e.g., `const MAX_LOGIN_ATTEMPTS = 5;`).

## Backend (Java)

For our Java backend, we adhere to the **Google Java Style Guide**. We use the [Spotless](https://github.com/diffplug/spotless) Maven plugin to enforce these rules automatically.

### How to Use

The formatter will run automatically during the Maven build process. You can also trigger it manually.

```bash
# In the backend/ directory

# Check for formatting issues
mvn spotless:check

# Apply formatting to fix issues
mvn spotless:apply
```

### Naming Conventions

-   **Classes & Interfaces**: Use `PascalCase` (e.g., `UserService`, `UserRepository`).
-   **Methods & Variables**: Use `camelCase` (e.g., `getUserById(String id)`).
-   **Constants**: Use `UPPER_CASE` with underscores (e.g., `static final int MAX_RETRIES = 3;`).
-   **Packages**: Use `lowercase` with no underscores (e.g., `com.mycompany.project.service`).

## IDE Integration (Highly Recommended)

To make your life easier, configure your IDE to format your code on save. This ensures your code is always compliant without having to think about it.

-   **VS Code**: Install the [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) extension. Then, open your settings (`settings.json`) and add the following:

    ```json
    {
      "editor.formatOnSave": true,
      "editor.defaultFormatter": "esbenp.prettier-vscode"
    }
    ```

-   **IntelliJ IDEA**: The Google Java Style is supported out of the box. To enable it, go to `Preferences > Editor > Code Style > Java`, click the gear icon, and select `Import Scheme > GoogleStyle`. To format on save, you can use the "Save Actions" plugin or configure the built-in "Actions on Save" to reformat code.
