# Level 2: Container Diagram

The Container Diagram zooms into the software system outlined in the System Context Diagram. It reveals the high-level architectural building blocks ("containers") that make up your system and shows how they interact.

### What is a "Container"?

In the C4 model, a "container" is **not** necessarily a Docker container. It represents a separately runnable or deployable unit that executes code or stores data.

Common examples of containers include:

-   **Server-side Web Application**: A Java Spring Boot application, a Ruby on Rails monolith, or a Node.js API.
-   **Client-side Web Application**: A JavaScript single-page application (SPA) running in a web browser (e.g., built with React, Angular, or Vue).
-   **Mobile App**: An iOS or Android application.
-   **Database**: A relational database schema (e.g., PostgreSQL, MySQL) or a NoSQL database (e.g., MongoDB, DynamoDB).
-   **File System**: A directory on a file server where data is stored.
-   **Message Bus**: A messaging queue or broker (e.g., RabbitMQ, Kafka).
-   **Batch Process**: A standalone executable or script that runs on a schedule.

## Purpose and Scope

-   **Audience**: Primarily software developers, architects, and operations/DevOps staff.
-   **Goal**: To illustrate the high-level shape of the system's architecture, show the major technology choices, and describe how responsibilities are distributed among the containers. It also shows the key communication pathways between them.
-   **Key Message**: "Here are the major structural blocks of our system, the technologies they are built with, and how they communicate."

## PlantUML Example

This example zooms into the "Internet Banking System" from the Context diagram.

```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Container.puml

LAYOUT_WITH_LEGEND()

Person(customer, "Personal Banking Customer", "A customer of the bank, with personal bank accounts.")
System_Ext(mainframe, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")
System_Ext(email_system, "E-mail System", "The internal e-mail system.")

System_Boundary(c1, "Internet Banking System") {
    Container(spa, "Single-Page App", "JavaScript, Angular", "Provides all the internet banking functionality to customers via their web browser.")
    Container(mobile_app, "Mobile App", "C#, Xamarin", "Provides a limited subset of the internet banking functionality to customers via their mobile device.")
    Container(api, "API Application", "Java, Spring Boot", "Provides internet banking functionality via a JSON/HTTPS API.")
    ContainerDb(database, "Database", "Oracle Database Schema", "Stores user credentials, access logs, etc.")
}

Rel(customer, spa, "Uses", "HTTPS")
Rel(customer, mobile_app, "Uses")

Rel(spa, api, "Makes API calls to", "JSON/HTTPS")
Rel(mobile_app, api, "Makes API calls to", "JSON/HTTPS")

Rel(api, database, "Reads from and writes to", "JDBC")
Rel(api, mainframe, "Uses", "XML/HTTPS")
Rel(api, email_system, "Sends e-mail using", "SMTP")

@enduml
```
