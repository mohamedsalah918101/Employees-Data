# Employee Data Application

A Flutter application that fetches and displays employee data from the DummyJSON API.

## Features

- Fetches employee data from DummyJSON API
- Displays employee information in a clean, card-based layout
- Handles loading states and errors
- Implements proper separation of concerns with separate files for widgets, services, and models


## Code Organization

- **models/**: Contains the data models for parsing JSON responses.
- **screens/**: Contains the main screens of the application.
- **services/**: Contains the API service for fetching employee data.
- **widgets/**: Contains reusable UI components.

## Implementation Details

- Uses the `http` package for API calls.
- Implements proper error handling.
- Follows Flutter best practices for state management.
- Uses proper widget composition for maintainable UI code.

## How to Run

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the application

## Dependencies

- **http**: ^1.2.2 - For making HTTP requests
