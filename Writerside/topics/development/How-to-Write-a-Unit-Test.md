# How to Write a Unit Test

This guide provides a practical introduction to writing unit tests for both frontend and backend code. Unit tests are the foundation of our testing strategy, ensuring that individual components of our application work as expected.

## Principles of a Good Unit Test

A good unit test should be:

-   **Fast**: It runs in milliseconds.
-   **Isolated**: It tests only one unit of code and mocks all external dependencies (like databases or APIs).
-   **Repeatable**: It produces the same result every time, regardless of the environment.
-   **Readable**: It is easy to understand what is being tested.

## The AAA Pattern (Arrange, Act, Assert)

We structure our tests using the Arrange-Act-Assert (AAA) pattern to ensure they are clear and consistent.

1.  **Arrange**: Set up the test environment. Initialize objects, mock dependencies, and prepare the data needed for the test.
2.  **Act**: Execute the unit of code being tested (e.g., call a function or method).
3.  **Assert**: Verify the outcome. Check if the code produced the expected result.

---

## Example 1: Frontend Unit Test (React Component)

Here, we'll test a simple `Button` component to ensure it calls its `onClick` handler when clicked.

-   **Tools**: [Jest](https://jestjs.io/) (test runner) and [React Testing Library](https://testing-library.com/docs/react-testing-library/intro/) (for rendering and interacting with components).

### The Component: `Button.tsx`

```tsx
import React from 'react';

interface ButtonProps {
  onClick: () => void;
  children: React.ReactNode;
}

export const Button = ({ onClick, children }: ButtonProps) => {
  return <button onClick={onClick}>{children}</button>;
};
```

### The Test: `Button.test.tsx`

```tsx
import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import { Button } from './Button';

it('should call the onClick handler when clicked', () => {
  // Arrange: Set up the test
  const handleClick = jest.fn(); // Create a mock function
  render(<Button onClick={handleClick}>Click Me</Button>);

  // Act: Execute the action
  const buttonElement = screen.getByText(/Click Me/i);
  fireEvent.click(buttonElement);

  // Assert: Verify the outcome
  expect(handleClick).toHaveBeenCalledTimes(1);
});
```

---

## Example 2: Backend Unit Test (Java Service)

Here, we'll test a `UserService` method to ensure it correctly retrieves a user from a `UserRepository`.

-   **Tools**: [JUnit 5](https://junit.org/junit5/) (test framework) and [Mockito](https://site.mockito.org/) (mocking library).

### The Service: `UserService.java`

```java
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User getUserById(String id) {
        return userRepository.findById(id)
                .orElseThrow(() -> new UserNotFoundException("User not found"));
    }
}
```

### The Test: `UserServiceTest.java`

```java
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class UserServiceTest {

    @Mock
    private UserRepository userRepository; // Mock the dependency

    @InjectMocks
    private UserService userService; // Inject the mock into our service

    @Test
    void getUserById_shouldReturnUser_whenUserExists() {
        // Arrange: Set up the mock
        User expectedUser = new User("123", "John Doe");
        when(userRepository.findById("123")).thenReturn(Optional.of(expectedUser));

        // Act: Call the method under test
        User actualUser = userService.getUserById("123");

        // Assert: Verify the result
        assertEquals(expectedUser.getId(), actualUser.getId());
        assertEquals(expectedUser.getName(), actualUser.getName());
    }
}
```

## Running a Single Test File

To speed up development, you can run a single test file instead of the entire suite.

-   **Frontend**: `npm test -- Button.test.tsx`
-   **Backend**: `mvn test -Dtest=UserServiceTest`
