# Use Case Diagrams

This section should contain Use Case Diagrams that illustrate the functionality of the system from the user's perspective.

#### Use Case: [Use Case Name]

| Field | Description |
|---|---|
| **Name** | [Name of the Use Case] |
| **Description** | [Brief description of the Use Case] |
| **Flow** | [Step-by-step description of the main flow] |
| **Actor** | [Actors involved in the Use Case] |
| **Preconditions** | [Conditions that must be met before the Use Case can start] |
| **Postconditions** | [Conditions that are true after the Use Case is completed] |
| **Exception Flow** | [Description of alternative or error flows] |

<!-- You can embed images here or link to external Use Case Diagram tools. Example: -->
<!-- ![Use Case Diagram Image](images/your-use-case-diagram.png) -->

```plantuml
@startuml
left to right direction
actor User
rectangle "System" {
  usecase "Perform Action" as UC1
  usecase "View Information" as UC2
}
User --> UC1
User --> UC2
@enduml
```
