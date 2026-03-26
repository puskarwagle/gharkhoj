# GharKhoj - Room Rental Marketplace (Nepal)

GharKhoj is a modern, responsive Flutter application designed for finding and listing rental rooms in Nepal. It features a polished dark aesthetic with high-contrast electric blue accents, optimized for both mobile and desktop experiences.

## 🚀 Getting Started

### Prerequisites
- **Flutter SDK:** >=3.0.0
- **Dart SDK:** Installed with Flutter

### Setup
1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd gharkhoj
   ```
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

### Running the App
- **Mobile (Emulator or Physical Device):**
  ```bash
  flutter run
  ```
- **Web:**
  ```bash
  flutter run -d chrome
  ```
- **Release Build (Android):**
  ```bash
  flutter build apk
  ```

## ✨ Features
- **Responsive Dashboard:** Adapts between vertical (mobile) and horizontal (desktop/tablet) layouts.
- **Modern Dark Theme:** Custom design with Electric Blue branding and Google Fonts (Poppins & Inter).
- **Mock Authentication:** Functional login flow with state management for session handling.
- **Search & List:** Centralized hub for finding rental spaces and posting new listings.

## 🛠 Tech Stack
- **Framework:** [Flutter](https://flutter.dev)
- **State Management:** [Provider](https://pub.dev/packages/provider)
- **Routing:** [GoRouter](https://pub.dev/packages/go_router)
- **Typography:** [Google Fonts](https://pub.dev/packages/google_fonts)

## 📂 Project Structure
- `lib/main.dart`: App configuration, routing, and global state providers.
- `lib/screens/`: Main application screens (Login, Home/Dashboard).
- `lib/theme/`: Centralized branding, colors, and typography configurations.
- `lib/widgets/`: Reusable UI components.

## 📝 Development Shortcuts & Commands
- **`flutter pub get`**: Fetch and update project dependencies.
- **`flutter analyze`**: Run static code analysis to check for errors or linting issues.
- **`flutter test`**: Execute the unit and widget test suite.
- **`flutter clean`**: Delete the `build/` directory and reset temporary files.
- **`flutter format .`**: Automatically format all Dart code in the project.
