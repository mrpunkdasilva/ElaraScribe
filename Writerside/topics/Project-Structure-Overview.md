# Project Structure Overview

This document provides a high-level overview of the project's directory structure. Understanding the layout of the codebase will help you locate files and understand where to add new features.

## High-Level Structure

Our repository is structured as a monorepo containing distinct parts of the application, such as the frontend and backend.

```plaintext
your-repository/
├── .github/              # Automation and CI/CD workflows
├── backend/                # Backend source code (e.g., Java/Spring Boot)
├── frontend/               # Frontend source code (e.g., React, Angular)
├── Writerside/             # Project documentation source files
├── scripts/                # Miscellaneous automation scripts
├── .gitignore              # Specifies files to be ignored by Git
├── docker-compose.yml      # Defines and configures Docker services
└── README.md               # Top-level project information
```

## Directory Breakdown

### `.github/`

This directory contains GitHub Actions workflows. These YAML files define our Continuous Integration and Continuous Deployment (CI/CD) pipelines, which automate tasks like building, testing, and deploying the application.

### `backend/`

This is the home of the server-side application. It handles business logic, API endpoints, and communication with the database.

-   `src/main/java/com/yourcompany/yourproject/`: Contains the main Java/Kotlin source code.
    -   `controller/`: Handles incoming HTTP requests (API endpoints).
    -   `service/`: Contains the core business logic.
    -   `repository/`: Manages data access and communication with the database.
    -   `model/` or `domain/`: Defines the data structures and entities.
-   `src/main/resources/`: Holds configuration files, such as `application.properties` or `application.yml`, and database migration scripts (e.g., Flyway or Liquibase).
-   `src/test/`: Contains all backend tests (unit, integration, etc.).
-   `pom.xml`: The Maven project file, defining dependencies and build configurations.

### `frontend/`

This directory contains the client-side application that users interact with in their browser.

-   `src/`: The main source code folder.
    -   `components/`: Reusable UI elements (buttons, forms, cards, etc.).
    -   `pages/` or `views/`: Top-level components that represent a full page in the application.
    -   `services/` or `api/`: Functions and classes responsible for making API calls to the backend.
    -   `hooks/`: Custom React hooks (if applicable).
    -   `store/` or `context/`: State management logic (e.g., Redux, Zustand, React Context).
    -   `assets/`: Static files like images, fonts, and global CSS.
-   `public/`: Contains the root `index.html` file and other static assets that don't get processed by the build system.
-   `package.json`: The Node.js project file, defining dependencies and scripts (`start`, `build`, `test`).

### `Writerside/`

This is where all project documentation, including this guide, is located. It uses the [Writerside](https://www.jetbrains.com/writerside/) format to generate a documentation website.

-   `topics/`: Contains the Markdown files for each documentation page.
-   `images/`: Stores images used in the documentation.

### `scripts/`

This folder holds various utility and automation scripts. These might be shell scripts (`.sh`) or Node.js scripts for tasks like database backups, bulk data processing, or custom deployment steps.

## Key Root Files

-   `docker-compose.yml`: A Docker Compose file used to define and run multi-container Docker applications. We use it to easily spin up our database and other backing services for local development.
-   `.gitignore`: A list of files and directories that Git should intentionally ignore (e.g., `node_modules`, build artifacts, `.env` files).
-   `README.md`: The main entry point for the repository, providing a general project summary, links to the documentation, and basic setup instructions.
