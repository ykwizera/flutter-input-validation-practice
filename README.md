# Flutter Form Validation App

A multi-screen Flutter application demonstrating form validation with various input types. This application implements a user registration flow with personal information and address details.

## Features

- Multi-screen form navigation
- Input validation for various field types
- Clean and organized project structure
- Material Design UI components
- Comprehensive error messaging


## Getting Started

### Prerequisites

- Flutter SDK (Latest stable version)
- Dart SDK (Latest stable version)
- An IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. Clone the repository
```bash
git clone [your-repository-url]
```

2. Navigate to the project directory
```bash
cd flutter-form-validation
```

3. Get dependencies
```bash
flutter pub get
```

4. Run the app
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── screens/
│   ├── personal_info_screen.dart    # First screen with personal details
│   └── address_screen.dart          # Second screen with address details
└── utils/
    └── validators.dart              # Form validation logic
```

## Validation Rules

The application implements the following validation rules:

### Personal Information
- **Name**: 
  - Required
  - Minimum 2 characters
  - Only letters and spaces allowed

- **Email**:
  - Required
  - Must follow standard email format (example@domain.com)

- **Phone Number**:
  - Required
  - Must be exactly 10 digits

### Address Information
- **Street Address**:
  - Required
  - Minimum 5 characters

- **City**:
  - Required
  - Only letters and spaces allowed

- **ZIP Code**:
  - Required
  - Must follow US ZIP code format (12345 or 12345-6789)

## Usage

1. Launch the app
2. Fill in the personal information form
3. Click "Next" to proceed to the address form
4. Fill in the address information
5. Click "Submit" to see a summary of all entered information

## Author
Yvette Kwizera

