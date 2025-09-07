# Pull Request & Code Review Guidelines

Code review is a critical process for maintaining a high-quality, healthy codebase. It's a collaborative effort to improve our work, share knowledge, and catch potential issues early. This document outlines our best practices for both creating and reviewing Pull Requests (PRs).

Our guiding principle is to **be kind and constructive**. The goal is to improve the code, not to criticize the author.

## For the Author: Creating a Pull Request

As the author of a PR, your goal is to make it as easy as possible for reviewers to understand and approve your changes.

### 1. Create Small, Focused PRs

Avoid creating large, monolithic PRs. A small, focused PR is easier and faster to review. A good rule of thumb is to address only one specific feature or bugfix per PR.

### 2. Write a Clear Title and Description

Your PR is a communication tool. The title should be a concise summary of the change (e.g., `feat: Add user avatar to profile page`). The description should explain:

-   **What** the change is.
-   **Why** this change is being made (e.g., link to the issue or ticket).
-   **How** the changes can be tested or verified by the reviewer.

### 3. Self-Review Your PR First

Before you ask others to review your code, review it yourself. Check for:

-   Typos and grammatical errors.
-   Leftover debugging code (e.g., `console.log`).
-   Unnecessary comments or files.
-   Adherence to the project's coding style.

### 4. Ensure All Checks are Passing

Do not request a review until all automated checks (CI builds, tests, linters) are passing. A red build indicates the PR is not ready for review.

## For the Reviewer: Reviewing a Pull Request

As a reviewer, your role is to act as a helpful guardian of the codebase. Your feedback should be constructive and aimed at improving the code and mentoring the author.

### 1. Be Constructive and Respectful

-   **Assume good intentions**: The author wrote the best code they could. Your job is to help them make it even better.
-   **Focus on the code, not the person**: Frame your feedback impersonally.
-   **Ask questions, don't make demands**: Instead of "Change this," try "What do you think about trying this approach instead? It might be more efficient because..."
-   **Use prefixes for non-critical feedback**: Use `nit:` (nitpick) for minor stylistic suggestions that don't block the PR.

### 2. Understand the Context

First, read the PR description and any linked issues to understand the goal of the changes. What problem is the author trying to solve?

### 3. What to Look For (The Review Checklist)

-   **Correctness**: Does the code do what it's supposed to do? Does it solve the problem? Does it handle edge cases correctly?
-   **Readability & Simplicity**: Is the code easy to understand? Is there a simpler way to achieve the same result? Are variable and function names clear?
-   **Consistency**: Does the code follow the existing patterns, conventions, and style of the project?
-   **Testing**: Are there tests for the new code? Do the tests cover the important use cases and potential failure modes?
-   **Security**: Does the change introduce any potential security vulnerabilities (e.g., SQL injection, XSS)?
-   **Documentation**: If the change affects the public API, user interface, or a complex part of the system, is it properly documented?

### 4. Provide Actionable Feedback

Clearly explain *why* a change is needed. Provide specific suggestions or code examples where possible. Your feedback should be a learning opportunity.

### 5. Approve When Ready

If the PR is good to go, approve it! Don't withhold approval for minor, non-blocking issues. The goal is progress, not perfection. If you have requested changes, re-review the PR promptly once the author has addressed your feedback.
