# PwGen

A simple, secure password generator built with Swift and SwiftUI for iOS, macOS, and visionOS.

## Features

- **Customizable Length**: Generate passwords from 8 to 72 characters
- **Character Options**: Toggle capital letters, numbers, and special characters
- **Instant Copy**: Generated passwords are automatically copied to clipboard
- **Cross-Platform**: Runs natively on iPhone, iPad, Mac, and Apple Vision Pro
- **Secure**: No network access, passwords generated locally
- **Modern UI**: Built with SwiftUI for a native experience on all platforms

## Screenshots

The app features a clean, intuitive interface with:
- Length slider for password customization
- Toggle switches for character set options
- One-click generation with visual feedback
- Monospace font display for easy reading

## Installation

### Requirements
- iOS 18.5+ / macOS 15.5+ / visionOS 2.5+
- Xcode 16.4+ (for development)

### Building from Source
1. Clone this repository
2. Open `PwGen.xcodeproj` in Xcode
3. Select your target platform (iOS, macOS, or visionOS)
4. Build and run (⌘+R)

## Usage

1. **Set Length**: Use the slider to choose password length (8-72 characters)
2. **Choose Options**: Toggle capital letters, numbers, and special characters
3. **Generate**: Click "Generate" to create a new password
4. **Copy**: Password is automatically copied to your clipboard
5. **Visual Feedback**: Checkmark animation confirms successful copy

## Technical Details

- **Architecture**: SwiftUI with MVVM-light pattern
- **Frameworks**: SwiftUI, AppKit (for clipboard access)
- **Security**: App Sandbox enabled, no network access
- **Testing**: Unit tests and UI tests included
- **Platform**: Universal app supporting iPhone, iPad, Mac, and Vision Pro

## Contributing

This is a simple, focused password generator. Contributions are welcome for:
- Bug fixes
- UI/UX improvements
- Additional character set options
- Platform-specific enhancements

## License

[Add your preferred license here]

## Security Note

This password generator:
- Runs entirely offline
- Does not store or transmit passwords
- Uses system-provided randomization
- Operates within App Sandbox security restrictions