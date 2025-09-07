# Level 1: System Context Diagram

The System Context Diagram is the highest level of abstraction in the C4 model, providing a bird's-eye view of your system. It shows the system as a single "black box" and illustrates how it fits into the wider IT and business landscape.

This diagram is the starting point for understanding a software system, showing what it does (and doesn't do) without revealing any internal implementation details.

## What it Shows

- **Your System**: The software system being described, placed in the center.
- **Actors**: The people (users, roles, personas) who interact directly with the system.
- **External Systems**: The other software systems that your system interacts with (e.g., third-party APIs, other internal systems, databases).
- **Interactions**: The high-level relationships and data flow between actors, your system, and external systems.

## Purpose and Scope

- **Audience**: Everyone, including business stakeholders, non-technical staff, developers, and architects. It's the perfect diagram to start a conversation about the system.
- **Goal**: To show the system's scope and its connections to the outside world. It clearly defines the system's boundaries.
- **Key Message**: "Here is the system we are building, here are the people who use it, and here are the other systems it interacts with."

## What it Doesn't Show

- Technology choices.
- Internal architecture or implementation details.
- Protocols or specific data formats.

## PlantUML Example

Below is an example of a System Context diagram for a fictional Internet Banking System.

```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Context.puml

LAYOUT_WITH_LEGEND()

Person(customer, "Personal Banking Customer", "A customer of the bank, with personal bank accounts.")
System(internet_banking, "Internet Banking System", "Allows customers to view information about their bank accounts, and make payments.")

System_Ext(mainframe, "Mainframe Banking System", "Stores all of the core banking information about customers, accounts, transactions, etc.")
System_Ext(email_system, "E-mail System", "The internal e-mail system.")

Rel(customer, internet_banking, "Uses")
Rel(internet_banking, email_system, "Sends e-mails using", "SMTP")
Rel(internet_banking, mainframe, "Gets account information from and makes payments using")

@enduml
```
