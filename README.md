# To-Do App

A modern and simple **To-Do List mobile application** built with **Flutter**.

The application helps users organize, manage, and track their daily tasks through a clean and user-friendly interface.

## Features

- Create and manage tasks
- Mark tasks as completed
- Delete tasks
- View and organize daily tasks
- Dark Mode
- Light Mode
- Arabic and English Localization
- Settings screen
- Responsive user interface
- Dynamic language switching
- RTL support for Arabic

## UI/UX Design

The application interface was designed in Figma with a focus on simplicity, usability, and a clean modern experience.

**Figma Design:**  
To-Do App

## Technologies

| Technology | Usage |
|---|---|
| Flutter | Mobile application development |
| Dart | Programming language |
| Provider | State management |
| Flutter Localization | Multi-language support |
| Shared Preferences | Local data persistence |
| Material Design | UI components |

## Project Structure

```text
lib/
│
├── UI/
│   ├── Screens/
│   │   ├── home/
│   │   ├── settings/
│   │   └── ...
│   │
│   └── providers/
│       ├── task_provider.dart
│       ├── app_theme_provider.dart
│       └── app_language_provider.dart
│
├── Utilities/
│   ├── app_colors.dart
│   ├── app_styles.dart
│   ├── app_theme.dart
│   ├── app_assets.dart
│   └── app_routes.dart
│
├── l10n/
│   ├── app_localization.dart
│   ├── app_localization_ar.dart
│   └── app_localization_en.dart
│
└── main.dart
```

## Localization

The application supports two languages:

- English
- Arabic

Users can switch between languages from the Settings screen.

The interface automatically adapts to the selected language, including RTL support for Arabic.

## Theme

The application supports:

- Light Theme
- Dark Theme

Theme management is handled using Provider, allowing the UI to update dynamically when the user changes the selected theme.

## State Management

The project uses Provider for managing application state.

Main providers include:

- `TaskProvider` — manages tasks and task-related operations.
- `AppThemeProvider` — manages Light/Dark mode.
- `AppLanguageProvider` — manages the selected application language.

## Getting Started

### Prerequisites

Make sure you have the following installed:

- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- Android Emulator or a physical Android device

### Installation

Clone the repository:

```bash
git clone <repository-url>
```

Navigate to the project directory:

```bash
cd to_do
```

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

## Running on Android

Start an Android Emulator or connect a physical Android device.

Check available devices:

```bash
flutter devices
```

Then run the application:

```bash
flutter run
```

## Testing

To run the Flutter tests:

```bash
flutter test
```

### Home Screen

Add Home Screen screenshot here.

### Settings

Add Settings Screen screenshot here.

### Dark Mode

Add Dark Mode screenshot here.

### Arabic Interface

Add Arabic UI screenshot here.

## Future Improvements

- Task reminders and notifications
- Calendar integration
- Task search
- Task categories
- Task priorities
- Productivity statistics
- Cloud synchronization
- User authentication
- Advanced local database storage

## Contributing

Contributions are welcome.

1. Fork the repository.
2. Create a new branch:

```bash
git checkout -b feature/new-feature
```

3. Make your changes.
4. Commit your changes:

```bash
git commit -m "Add new feature"
```

5. Push to your branch:

```bash
git push origin feature/new-feature
```

6. Open a Pull Request.

## License

This project is developed for educational and development purposes.
