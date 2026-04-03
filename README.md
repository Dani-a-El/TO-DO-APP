# Xdo - Desktop To-Do List App

A beautiful, cross-platform desktop to-do list application built with Flutter.

## Features

- ✅ Add, complete, and delete tasks
- 📊 Track active and completed tasks with statistics
- 💾 Tasks are saved locally and restored on next launch
- 🆕 Starts with an empty list so users add their own tasks
- 🎨 Modern Material Design 3 UI
- 🌓 Automatic light/dark theme support
- 🖥️ Desktop-optimized layout with sidebar
- 🧹 Bulk delete completed tasks

## Getting Started

### Prerequisites

- Flutter SDK (3.0 or higher)
- Desktop development setup for your platform:
  - **Linux**: `flutter config --enable-linux-desktop`
  - **macOS**: `flutter config --enable-macos-desktop`
  - **Windows**: `flutter config --enable-windows-desktop`

### Running the App

```bash
cd xdo
flutter run -d linux    # or macos, windows
```

### Building the App

```bash
# Linux
flutter build linux

# macOS
flutter build macos

# Windows
flutter build windows
```

The built application will be in the `build/` directory.

## Project Structure

```
xdo/
├── lib/
│   └── main.dart          # Main application code
├── linux/                 # Linux platform files
├── macos/                 # macOS platform files
├── windows/               # Windows platform files
└── pubspec.yaml          # Dependencies
```

## Usage

1. **Add a task**: Type in the input field and press Enter or click "Add Task"
2. **Complete a task**: Click the checkbox next to any task
3. **Delete a task**: Click the delete icon on the right
4. **Clear completed**: Click "Clear Completed" in the sidebar to remove all completed tasks

### Data Persistence

- Tasks are stored locally on your machine using SharedPreferences.
- Closing and reopening the app keeps your tasks intact.

## License

This project is open source and available under the MIT License.
