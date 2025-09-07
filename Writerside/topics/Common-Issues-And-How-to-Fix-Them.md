# Troubleshooting: Common Issues & How to Fix Them

This document is a living collection of common problems encountered during development and their solutions. If you solve a problem that isn't listed here, please consider adding it by creating a Pull Request.

---

### Issue: Backend fails to start with "Port 8080 is already in use"

-   **Problem**: The backend application (Spring Boot) fails to start, and you see an error message similar to `Web server failed to start. Port 8080 was already in use.`

-   **Cause**: Another process on your machine is already using port 8080.

-   **Solution**:

    1.  **Find and stop the conflicting process**.

        -   On **macOS** or **Linux**, run this command to find the Process ID (PID):
            ```bash
            lsof -i :8080
            ```
            Then, stop the process using its PID:
            ```bash
            kill -9 <PID>
            ```

        -   On **Windows**, run this command to find the PID:
            ```bash
            netstat -ano | findstr :8080
            ```
            Then, open Task Manager, go to the "Details" tab, find the PID, and end the task.

    2.  **Alternatively, change the port** for the application. In `backend/src/main/resources/application.properties`, add:
        ```properties
        server.port=8081
        ```

---

### Issue: Frontend fails with "CORS error" when calling the backend

-   **Problem**: You open the browser console and see an error like `Access to fetch at 'http://localhost:8080/api/users' from origin 'http://localhost:3000' has been blocked by CORS policy.`

-   **Cause**: The backend server is not configured to accept requests from the frontend's origin (`http://localhost:3000`). This is a security feature built into web browsers.

-   **Solution**: The fix must be applied on the **backend**.

    -   In our Spring Boot application, this is typically handled in a security configuration class. Ensure that the frontend's origin is included in the list of allowed origins.
    -   Look for a `@Configuration` class with a `WebMvcConfigurer` bean or a `@CrossOrigin` annotation. The configuration should include `http://localhost:3000`.

---

### Issue: `npm install` fails with `ERESOLVE` dependency errors

-   **Problem**: Running `npm install` in the `frontend/` directory fails with messages like `npm ERR! code ERESOLVE` or `unable to resolve dependency tree`.

-   **Cause**: This happens when two or more of your project's dependencies require different, incompatible versions of a third-party package.

-   **Solution**:

    1.  **First, try a clean install**. Delete `node_modules` and `package-lock.json` and try again.
        ```bash
        # In the frontend/ directory
        rm -rf node_modules package-lock.json
        npm install
        ```

    2.  If the error persists, you can try to bypass the peer dependency check. This can sometimes resolve the issue, but use it with caution.
        ```bash
        npm install --legacy-peer-deps
        ```

---

### Issue: Docker containers fail to start

-   **Problem**: Running `docker-compose up` fails with an error message.

-   **Cause**: This can have several causes, such as the Docker daemon not running, port conflicts, or corrupted images.

-   **Solution**:

    1.  **Check if Docker is running**: Make sure the Docker Desktop application is open and running.
    2.  **Check the container logs**: If a specific container is failing, check its logs for a more detailed error message.
        ```bash
        # Example for the database container
        docker-compose logs db
        ```
    3.  **Check for port conflicts**: If the logs mention a port is already in use, another process on your machine (perhaps a locally installed database) might be using the same port as the Docker container.
    4.  **Prune the system**: As a last resort, you can clean up unused Docker assets. This can sometimes resolve issues with corrupted images or networks.
        ```bash
        # Warning: This will remove all stopped containers, unused networks, and dangling images.
        docker system prune
        ```
