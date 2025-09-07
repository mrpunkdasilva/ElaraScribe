# Logging Best Practices

Effective logging is essential for monitoring, debugging, and understanding the behavior of our application. This guide provides best practices to ensure our logs are consistent, useful, and secure.

## Log Levels

Using appropriate log levels is crucial for filtering and prioritizing log messages. We use the following standard levels:

-   **`ERROR`**: For critical failures that require immediate attention. These are issues that disrupt functionality. An `ERROR` log should always trigger an alert.
    -   *Example*: Unhandled exceptions, database connection failure, critical service unavailability.

-   **`WARN`**: For unexpected events or potential issues that are not critical but should be monitored. The application can recover from these events, but they may indicate future problems.
    -   *Example*: Deprecated API endpoint usage, failed login attempts, high number of retries.

-   **`INFO`**: For high-level, informational messages that track the application's progress and key events. These are the primary logs for monitoring business flows.
    -   *Example*: Application startup, user authentication success, order processing completion.

-   **`DEBUG`**: For fine-grained information useful for debugging during development. These logs should be disabled in production environments by default but can be enabled temporarily to diagnose specific issues.
    -   *Example*: Method entry/exit points, variable values, detailed API request/response bodies.

-   **`TRACE`**: The most detailed level of logging, providing even more granular information than `DEBUG`. This should almost always be disabled in production.

## What to Log

-   **Log with Context**: A log message like "An error occurred" is useless. Always include relevant context. This is the most important rule of logging.
    -   *Good*: `Failed to process payment for order. {orderId: 123, userId: 456, reason: "Insufficient funds"}`
    -   *Bad*: `Payment failed.`

-   **Log Key Events**: Log the entry and exit points of significant business transactions (e.g., user registration, payment processing).

-   **Log Errors with Stack Traces**: When an exception is caught, always log the full stack trace at the `ERROR` level. This is invaluable for debugging.

## What NOT to Log (Security)

**Never log sensitive data.** Exposing Personally Identifiable Information (PII) or security credentials in logs is a major security vulnerability.

Avoid logging:
-   Passwords
-   API keys, tokens, and secrets
-   Credit card numbers or financial details
-   Social security numbers, addresses, or other personal user information

Be sure to sanitize any data before logging it if it might contain sensitive information.

## Use Structured Logging (JSON)

We use structured logging in JSON format. This makes our logs machine-readable, which is essential for modern log management and analysis tools (e.g., Datadog, Splunk, ELK Stack).

-   **Plain Text (Bad)**: `[2025-09-07 10:45:12] INFO: User 123 authenticated.`
-   **Structured JSON (Good)**:

```json
{
  "timestamp": "2025-09-07T10:45:12.123Z",
  "level": "INFO",
  "message": "User successfully authenticated",
  "context": {
    "userId": "12345",
    "requestId": "abc-xyz-789",
    "sourceIp": "192.168.1.100"
  }
}
```

## Use Correlation IDs

Every request that enters our system should be assigned a unique **Correlation ID** (or `requestId`). This ID must be passed along to any subsequent service calls and included in every log message related to that request.

This allows us to trace the entire journey of a single request through our distributed system, making debugging complex interactions significantly easier.
