#!/bin/bash
set -e

APP_NAME="xdo"
INSTALL_DIR="$HOME/.local/share/$APP_NAME"
BIN_DIR="$HOME/.local/bin"
DESKTOP_DIR="$HOME/.local/share/applications"
ICON_DIR="$HOME/.local/share/icons/hicolor/512x512/apps"

echo "Installing Xdo To-Do List App..."

# Create directories
mkdir -p "$INSTALL_DIR"
mkdir -p "$BIN_DIR"
mkdir -p "$DESKTOP_DIR"
mkdir -p "$ICON_DIR"

# Copy application files
echo "Copying application files..."
cp -r build/linux/x64/release/bundle/* "$INSTALL_DIR/"

# Create launcher script
echo "Creating launcher..."
cat > "$BIN_DIR/$APP_NAME" << 'LAUNCHER'
#!/bin/bash
exec "$HOME/.local/share/xdo/xdo" "$@"
LAUNCHER
chmod +x "$BIN_DIR/$APP_NAME"

# Create desktop entry
echo "Creating desktop entry..."
cat > "$DESKTOP_DIR/$APP_NAME.desktop" << 'DESKTOP'
[Desktop Entry]
Name=Xdo
Comment=Desktop To-Do List Application
Exec=xdo
Icon=xdo
Terminal=false
Type=Application
Categories=Utility;Office;
StartupWMClass=xdo
DESKTOP

# Create a simple icon
echo "Setting up icon..."
cat > "$ICON_DIR/$APP_NAME.svg" << 'ICON'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="512" height="512">
  <rect width="512" height="512" rx="80" fill="#4F46E5"/>
  <path d="M150 256l80 80 132-176" stroke="white" stroke-width="40" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
  <circle cx="256" cy="256" r="200" stroke="white" stroke-width="20" fill="none"/>
</svg>
ICON

echo ""
echo "✓ Installation complete!"
echo ""
echo "You can now run Xdo by:"
echo "  1. Typing 'xdo' in the terminal"
echo "  2. Searching for 'Xdo' in your application menu"
echo ""
echo "Note: You may need to log out and back in for the app menu to update."
