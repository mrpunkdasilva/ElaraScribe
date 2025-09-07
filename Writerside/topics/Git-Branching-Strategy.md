# Git Branching Strategy

To ensure our codebase remains stable and to facilitate collaboration, we follow a simple and effective branching strategy based on **GitHub Flow**. This guide outlines the process for contributing code to the project.

## Core Principles

1.  **`main` is always deployable**: The `main` branch contains the official, stable release history. Code in `main` should always be in a state that could be deployed to production.
2.  **Create branches from `main`**: All new work, whether it's a feature, a bugfix, or a chore, must be done on a separate branch.
3.  **Push to the remote and open a Pull Request (PR)**: When your work is ready for feedback or merging, push your branch to the remote repository and open a Pull Request.
4.  **Review and discuss**: A PR is a forum for code review and discussion. Changes are merged only after approval from team members.
5.  **Merge and clean up**: Once the PR is approved and all automated checks have passed, it is merged into `main`, and the feature branch is deleted.

## Step-by-Step Workflow

Here is the typical workflow for a developer.

### 1. Sync Your Local `main` Branch

Before starting new work, always make sure your local `main` branch is up-to-date with the remote repository.

```bash
git checkout main
git pull origin main
```

### 2. Create a New Branch

Create a new, descriptively named branch off of `main`.

```bash
git checkout -b <branch-name>
```

#### Branch Naming Conventions

We use the following prefixes to categorize our branches:

-   `feature/<description>`: For new features (e.g., `feature/user-profile-page`).
-   `bugfix/<description>`: For fixing bugs (e.g., `bugfix/login-button-not-working`).
-   `chore/<description>`: For maintenance tasks that don't add features or fix bugs (e.g., `chore/update-dependencies`, `chore/refactor-api-service`).

### 3. Do Your Work: Commit and Push

Make your changes on the feature branch. Commit your work in small, logical chunks. Write clear and concise commit messages.

We encourage following the [Conventional Commits](https://www.conventionalcommits.org/) specification.

```bash
# Example of a good commit message
git commit -m "feat: Add validation to the user registration form"
```

Periodically push your branch to the remote repository to back up your work and make it visible to others.

```bash
git push origin <branch-name>
```

### 4. Open a Pull Request (PR)

When you are ready for your code to be reviewed, open a Pull Request on GitHub, targeting the `main` branch.

-   **Write a clear title and description**: Explain the *what* and *why* of your changes. If it resolves an issue, link to it.
-   **Fill out the PR template**: Provide all the requested information.
-   **Request reviewers**: Assign at least one or two team members to review your code.

### 5. Participate in Code Review

Your reviewers will examine your code for quality, correctness, and adherence to standards. 

-   Respond to comments and questions.
-   Make any necessary changes by pushing new commits to your branch. The PR will update automatically.

### 6. Merge the PR

Once the PR is approved and all CI checks (like automated tests) have passed, it can be merged.

-   We prefer using **Squash and Merge**. This combines all of your branch's commits into a single commit on the `main` branch, keeping our Git history clean and easy to read.

### 7. Clean Up

After your PR is merged, delete your branch. GitHub often provides a button to do this automatically on the PR page.

```bash
# You can also delete it locally
git branch -d <branch-name>
```
