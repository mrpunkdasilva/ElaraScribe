# Testing Strategy

Our testing strategy is designed to ensure the application is reliable, correct, and maintainable. We aim to catch bugs early in the development process and ship changes with confidence. This document provides a high-level overview of our approach to testing.

We follow the principles of the **Testing Pyramid**, which guides us on how to balance different types of tests.

## The Testing Pyramid

The Testing Pyramid is a model that advocates for having many fast, low-level unit tests, a smaller number of integration tests, and very few slow, high-level end-to-end tests.

```plaintext
      /\      <-- End-to-End Tests (Few)
     /  \ 
    /----\    <-- Integration Tests (More)
   /      \ 
  /--------\  <-- Unit Tests (Lots)
```

### 1. Unit Tests (The Base)

-   **Goal**: To verify that individual units of code (e.g., a single function, a React component, a Java class) work correctly in isolation.
-   **Scope**: These tests are small, fast, and independent. Dependencies are typically mocked or stubbed.
-   **Value**: They provide rapid feedback to developers and help pinpoint the exact location of a bug.
-   **Location**: They live alongside the source code (e.g., `MyComponent.test.tsx`) or in a dedicated test directory (`src/test/java`).
-   **Our Approach**: We write unit tests for all critical business logic, complex functions, and UI components.

### 2. Integration Tests (The Middle)

-   **Goal**: To verify that different parts of the system work together as intended.
-   **Scope**: These tests cover the interaction between two or more components. Examples include:
    -   Testing an API endpoint and its interaction with a service layer and a database (often an in-memory database).
    -   Testing a frontend component that fetches data from a mocked API.
-   **Value**: They provide confidence that the major pieces of the application are correctly wired together.
-   **Our Approach**: We use integration tests to validate our API endpoints and the integration between our frontend services and backend APIs.

### 3. End-to-End (E2E) Tests (The Top)

-   **Goal**: To test the entire application from the user's perspective, simulating real user workflows.
-   **Scope**: These tests run against a fully deployed application, controlling a browser to perform actions like logging in, navigating through pages, and submitting forms.
-   **Value**: They provide the highest level of confidence that the system works as a whole. However, they are also the slowest, most brittle, and most expensive to write and maintain.
-   **Our Approach**: We write a small number of E2E tests to cover only the most critical user journeys, such as user registration, login, and the primary checkout or submission flow.

## How to Run Tests

Tests are a core part of our development workflow and are executed automatically in our CI pipeline.

You can also run them locally:

-   **Backend Tests (Java/Maven)**:

    ```bash
    # In the backend/ directory
    mvn test
    ```

-   **Frontend Tests (JavaScript/Jest)**:

    ```bash
    # In the frontend/ directory
    npm test
    ```

-   **Frontend E2E Tests (Cypress/Playwright)**:

    ```bash
    # In the frontend/ directory
    npm run test:e2e
    ```

## General Guidelines

-   **Code Coverage**: We aim for a healthy code coverage percentage (e.g., >80% for unit tests), but we prioritize the quality of tests over the raw number. 100% coverage of trivial tests is not the goal.
-   **CI Pipeline**: All tests are run on every pull request. A failing test will block the PR from being merged. This ensures that no code that breaks existing functionality is merged into the `main` branch.
