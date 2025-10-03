# My Portfolio

A modern Flutter web portfolio showcasing professional experience, projects, and skills with a clean, responsive design.

## Features

- **Responsive Design**: Optimized for desktop, tablet, and mobile devices
- **Internationalization**: Multi-language support (English/Spanish)
- **Interactive Work Experience**: Expandable cards with project galleries
- **Modern UI**: Material Design 3 with custom animations
- **Clean Architecture**: Organized with features-based structure

## Tech Stack

- **Framework**: Flutter 3.9.2+
- **State Management**: Built-in Flutter state management
- **Architecture**: Clean Architecture with feature-based organization
- **Localization**: Flutter Intl
- **Fonts**: Google Fonts
- **Code Generation**: Freezed, JSON Serializable

## Project Structure

```
lib/
├── core/                 # Core utilities and shared components
│   ├── extensions/       # Dart extensions
│   └── presentation/     # Shared UI components
├── features/            # Feature modules
│   ├── about_me/        # About section
│   ├── contact/         # Contact information
│   ├── home/           # Landing page
│   ├── projects/       # Projects showcase
│   ├── root/           # App root and navigation
│   └── work/           # Work experience
├── l10n/               # Localization files
└── main.dart           # App entry point
```

## Getting Started

### Prerequisites

- Flutter SDK 3.9.2 or higher
- Dart SDK
- Web browser for testing

### Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Generate code:
   ```bash
   flutter packages pub run build_runner build
   ```

4. Run the app:
   ```bash
   flutter run -d chrome
   ```

## Building for Production

```bash
flutter build web --release
```

## License

This project is licensed under a Custom Learning License - see the [LICENSE](LICENSE) file for details.

**Note**: This code is provided for educational and learning purposes only. Commercial use, copying, forking, or monetization is strictly prohibited.
