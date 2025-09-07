# Local Development Setup

Welcome to the project! This guide provides step-by-step instructions to set up your local development environment and run the application on your machine.

## Prerequisites

Before you begin, ensure you have the following tools installed on your system. We recommend using a version manager like `nvm` for Node.js or `sdkman` for Java to easily switch between versions.

- **Git**: For version control.
- **Node.js**: `v18.x` or later. ([Download](https://nodejs.org/))
- **Java**: `JDK 17` or later. ([Download](https://www.oracle.com/java/technologies/downloads/))
- **Maven**: `v3.8.x` or later. (Used for backend dependency management)
- **Docker** & **Docker Compose**: For running external services like databases. ([Download](https://www.docker.com/products/docker-desktop/))
- **IDE**: A code editor of your choice, such as [VS Code](https://code.visualstudio.com/) or [IntelliJ IDEA](https://www.jetbrains.com/idea/).

## Installation Steps

Follow these steps to get the project up and running.

### 1. Clone the Repository

First, clone the project repository from GitHub to your local machine.

```bash
# Replace with the actual repository URL
git clone https://github.com/your-organization/your-repository.git
cd your-repository
```

### 2. Install Dependencies

The project is divided into a frontend and a backend, each with its own dependencies.

- **Backend (Java/Maven)**: Navigate to the backend directory and let Maven download the required libraries.

```bash
# Assuming the backend is in a folder named 'backend'
cd backend
mvn clean install
```

- **Frontend (Node.js/npm)**: Navigate to the frontend directory and install the npm packages.

```bash
# Assuming the frontend is in a folder named 'frontend'
cd ../frontend
npm install
```

### 3. Configure Environment Variables

Many application settings are controlled via environment variables. You will need to create a `.env` file for local configuration.

1.  Look for a file named `.env.example` in the backend or root directory.
2.  Copy this file to a new file named `.env` in the same directory.

    ```bash
    cp .env.example .env
    ```

3.  Open the `.env` file and fill in the required values, such as database credentials, API keys, etc. The example file should contain comments explaining each variable.

### 4. Start External Services

Our application depends on external services like a database. We use Docker Compose to manage these.

From the root directory, run:

```bash
docker-compose up -d
```

This command will start all services defined in the `docker-compose.yml` file in detached mode (`-d`).

### 5. Run the Application

Now you can start the backend and frontend applications.

- **Run the Backend**: From the `backend` directory, run the Spring Boot application.

```bash
# In the 'backend' directory
mvn spring-boot:run
```

The backend API should now be running on `http://localhost:8080`.

- **Run the Frontend**: From the `frontend` directory, start the development server.

```bash
# In the 'frontend' directory
npm start
```

The frontend application should now be accessible at `http://localhost:3000`.

## Verification

To verify that everything is working correctly:

1.  Open your web browser and navigate to `http://localhost:3000`.
2.  You should see the application's login page.
3.  Check the console where you started the backend and frontend for any error messages.

If you encounter any issues, please refer to the `Troubleshooting.md` guide or ask for help in the team's communication channel.
