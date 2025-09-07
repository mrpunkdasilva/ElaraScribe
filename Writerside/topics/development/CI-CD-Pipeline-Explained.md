# CI/CD Pipeline Explained

CI/CD stands for Continuous Integration and Continuous Deployment/Delivery. It is the backbone of our development process, automating how we build, test, and release our software. This document provides an overview of our CI/CD pipeline.

We use **GitHub Actions** as our CI/CD platform. The pipeline workflows are defined in the `.yml` files located in the `.github/workflows/` directory.

Our pipeline is divided into two main parts: the **CI pipeline** (which runs on every pull request) and the **CD pipeline** (which runs after a pull request is merged into `main`).

## The CI Pipeline (Runs on Pull Requests)

Continuous Integration (CI) is the process of automating the build and testing of code every time a developer commits changes. Its primary goal is to catch issues early.

**Trigger**: This pipeline runs automatically whenever a Pull Request (PR) is opened or updated.

### Stages and Jobs {id="stages-and-jobs_1"}

1.  **Linting and Formatting Check**:
    -   **Purpose**: To ensure all code adheres to our defined code style.
    -   **Action**: This job runs `npm run lint` for the frontend and `mvn spotless:check` for the backend.
    -   **Outcome**: If any file is not correctly formatted, this job fails, blocking the PR.

2.  **Backend Build & Test**:
    -   **Purpose**: To compile the backend code and run all associated tests.
    -   **Action**: This job checks out the code, sets up a Java environment, and runs `mvn clean install`.
    -   **Outcome**: This ensures the backend application builds successfully and all unit and integration tests pass.

3.  **Frontend Build & Test**:
    -   **Purpose**: To build the frontend application and run all its tests.
    -   **Action**: This job checks out the code, sets up a Node.js environment, runs `npm install`, and then executes `npm test` and `npm run build`.
    -   **Outcome**: This verifies that all frontend tests pass and that the application can be successfully compiled for production.

**A green build is required to merge a PR.** If any of these jobs fail, the developer must fix the issues before the PR can be merged.

## The CD Pipeline (Runs on Merge to `main`)

Continuous Deployment (CD) is the process of automatically deploying the application to our environments after it has successfully passed the CI stage.

**Trigger**: This pipeline runs automatically whenever a commit is pushed to the `main` branch (which typically happens when a PR is merged).

### Stages and Jobs

1.  **Build and Test (CI)**:
    -   The same CI jobs (Lint, Backend Test, Frontend Test) run again on the merged code to ensure the integrity of the `main` branch.

2.  **Build and Push Docker Images**:
    -   **Purpose**: To package our applications into portable Docker images.
    -   **Action**: The pipeline builds Docker images for the `backend` and `frontend` applications. Each image is tagged with a unique identifier (e.g., the Git commit hash).
    -   **Outcome**: The newly created images are pushed to our container registry (e.g., GitHub Container Registry, Docker Hub).

3.  **Deploy to Staging**:
    -   **Purpose**: To deploy the new version of the application to a `staging` environment.
    -   **Action**: The pipeline uses the new Docker images to update the services in our staging environment, which is a production-like environment for final testing.
    -   **Outcome**: The latest version of the code is now running in `staging`.

4.  **Deploy to Production (Manual Trigger)**:
    -   **Purpose**: To release the new version to our end-users.
    -   **Action**: The deployment to our `production` environment is a **manual step**. After the changes have been verified in the staging environment, a team member with the appropriate permissions can trigger the production deployment job.
    -   **Outcome**: The new version of the application is live.

## Viewing Pipeline Status

You can view the real-time progress and logs of any pipeline run by navigating to the **"Actions"** tab in our GitHub repository.
