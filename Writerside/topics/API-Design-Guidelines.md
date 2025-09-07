# API Design Guidelines

This document outlines the standards and best practices for designing and building RESTful APIs within this project. A consistent API design makes our services easier to use, more predictable, and faster to develop and test.

## General Principles

-   **Follow RESTful Principles**: We design our APIs around resources and standard HTTP methods.
-   **JSON for Data Exchange**: The API must accept and respond with JSON. The `Content-Type` header for requests and responses should be `application/json`.
-   **HTTPS Everywhere**: All API endpoints must be exposed over a secure TLS connection (HTTPS).

## Endpoint Naming and Structure

### Use Nouns for Resources

Endpoints should refer to a resource using nouns, not verbs. The HTTP method itself should specify the action.

-   **Good**: `/users`, `/orders`
-   **Bad**: `/getUsers`, `/createOrder`

### Use Plural Nouns

Use plural nouns for collections to keep the API consistent.

-   **Good**: `/users`, `/users/{userId}/posts`
-   **Bad**: `/user`, `/user/{userId}/post`

### URI Structure

-   **Collection**: e.g., `GET /users`, `POST /users`
-   **Specific Item**: e.g., `GET /users/{userId}`, `PUT /users/{userId}`
-   **Nested Resources**: For resources that have a clear parent-child relationship, e.g., `GET /users/{userId}/orders`.

## HTTP Methods (Verbs)

We use standard HTTP methods to indicate the action being performed on a resource.

| Method  | Action                               | Idempotent | Response on Success      |
| :------ | :----------------------------------- | :--------- | :----------------------- |
| `GET`     | Retrieve a resource or collection.   | Yes        | `200 OK`                 |
| `POST`    | Create a new resource.               | No         | `201 Created`            |
| `PUT`     | Replace an existing resource.        | Yes        | `200 OK` or `204 No Content` |
| `PATCH`   | Partially update an existing resource. | No         | `200 OK` or `204 No Content` |
| `DELETE`  | Delete an existing resource.         | Yes        | `204 No Content`         |

## HTTP Status Codes

Use standard HTTP status codes to communicate the result of an API call.

-   **2xx (Success)**
    -   `200 OK`: The request was successful (used for `GET`, `PUT`, `PATCH`).
    -   `201 Created`: A new resource was successfully created (used for `POST`).
    -   `204 No Content`: The request was successful, but there is no data to return (used for `DELETE`).
-   **4xx (Client Error)**
    -   `400 Bad Request`: The request was malformed (e.g., invalid JSON, validation error).
    -   `401 Unauthorized`: The request requires authentication, but credentials were not provided or were invalid.
    -   `403 Forbidden`: The authenticated user does not have permission to perform the requested action.
    -   `404 Not Found`: The requested resource does not exist.
-   **5xx (Server Error)**
    -   `500 Internal Server Error`: A generic error for an unexpected failure on the server. Do not expose stack traces in the response.

## Standard Error Response

All error responses (4xx and 5xx) must return a JSON object with a consistent structure.

```json
{
  "timestamp": "2025-09-07T10:30:00Z",
  "status": 400,
  "error": "Bad Request",
  "message": "Validation failed: Email must be a valid email address.",
  "path": "/api/v1/users"
}
```

## Data Formatting

-   **Case Convention**: All JSON property names must use `camelCase` (e.g., `firstName`).
-   **Dates**: All timestamps in requests and responses must be in **ISO 8601** format and expressed in **UTC** (e.g., `2025-09-07T10:30:00.123Z`).

## Versioning

We use URI-based versioning for our APIs. The version number is included in the URL path.

-   **Example**: `https://api.yourdomain.com/v1/users`

This allows us to introduce breaking changes in future versions without affecting existing clients.
