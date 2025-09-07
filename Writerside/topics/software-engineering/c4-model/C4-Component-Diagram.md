# Level 3: Component Diagram

The Component Diagram zooms into an individual **container** to show its internal building blocks, which are called "components." This diagram reveals the major structural components within a container and their interactions.

### What is a "Component"?

A "component" is a logical grouping of related code that realizes a specific set of responsibilities. It is not a separately deployable unit itself; instead, it exists within a container.

Common examples of components include:

-   **Service Layer Objects**: A collection of classes grouped behind a facade or interface (e.g., `InvoiceService`, `PaymentGateway`).
-   **Data Access Objects (DAO/Repository)**: Components responsible for communicating with a database (e.g., `UserRepository`).
-   **MVC Components**: In a Model-View-Controller architecture, these would be the models, views, and controllers (e.g., `UserController`, `UserView`).
-   **Modules or Packages**: A logical grouping of code within a larger codebase.
-   **Domain-Driven Design (DDD) Aggregates**: A cluster of domain objects that can be treated as a single unit.

## Purpose and Scope

-   **Audience**: Primarily software developers and architects who need to understand the internal design of a specific container.
-   **Goal**: To show how a container is built by breaking it down into its key structural blocks. It helps developers understand the codebase, identify areas of responsibility, and see how components collaborate to fulfill the container's purpose.
-   **Key Message**: "Inside this container, here are the key components and how they work together."

## PlantUML Example

This example zooms into the "API Application" container from the Container diagram.

```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Component.puml

LAYOUT_WITH_LEGEND()

Container(api, "API Application", "Java, Spring Boot", "Provides internet banking functionality via a JSON/HTTPS API.")

ContainerDb(database, "Database", "Oracle Database Schema", "Stores user credentials, access logs, etc.")
System_Ext(mainframe, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")

Container_Boundary(c1, "API Application") {
    Component(signin, "Sign In Controller", "Spring MVC Rest Controller", "Allows users to sign in to the internet banking system.")
    Component(accounts, "Accounts Summary Controller", "Spring MVC Rest Controller", "Provides customers with a summary of their bank accounts.")
    Component(security, "Security Component", "Spring Bean", "Provides functionality related to authentication, authorization and sessions.")
    Component(mainframe_facade, "Mainframe Banking System Facade", "Spring Bean", "A facade that provides access to the mainframe banking system.")

    Rel(signin, security, "Uses")
    Rel(accounts, security, "Uses")
    Rel(accounts, mainframe_facade, "Uses")
    Rel(security, database, "Reads from and writes to", "JDBC")
    Rel(mainframe_facade, mainframe, "Uses", "XML/HTTPS")
}

@enduml
```
