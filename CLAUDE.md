# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

PwGen is a Swift/SwiftUI password generator application that runs on iOS, macOS, and visionOS. The project uses a minimal single-view architecture with no external dependencies.

## Common Development Commands

### Building and Running
```bash
# Open in Xcode
open PwGen.xcodeproj

# Build from command line (if xcodebuild is available)
xcodebuild -project PwGen.xcodeproj -scheme PwGen -destination "platform=macOS" build
```

### Testing
```bash
# Run tests from command line
xcodebuild test -project PwGen.xcodeproj -scheme PwGen -destination "platform=macOS"

# Unit tests are in PwGenTests/PwGenTests.swift
# UI tests are in PwGenUITests/ directory
```

### Git Operations
```bash
# The repository root is the project directory
git status
git add .
git commit -m "Your commit message"
git push
```

## Code Architecture

### Project Structure
- **PwGen/**: Main source code directory
  - `PwGenApp.swift`: App entry point with `@main` struct
  - `ContentView.swift`: Single view containing all UI and password generation logic
  - `PwGen.entitlements`: App sandbox and security settings
  - `Assets.xcassets/`: App icons and resources

### Key Components
- **State Management**: Uses SwiftUI `@State` properties for UI state
- **Password Generation**: Pure function in `ContentView.generatePassword()`
- **Clipboard Integration**: Uses `NSPasteboard` for macOS clipboard access
- **Multi-platform**: Single codebase targets iOS (18.5+), macOS (15.5+), and visionOS (2.5+)

### Dependencies
- **SwiftUI**: Primary UI framework
- **AppKit**: For macOS clipboard functionality via NSPasteboard
- **No external packages**: Self-contained with only Apple frameworks

## Development Notes

### Platform Support
The app is configured for multi-platform deployment:
- iOS/iPadOS with iPhone and iPad device families
- macOS with App Sandbox enabled
- visionOS for Apple Vision Pro

### Security Configuration
- App Sandbox is enabled in entitlements
- File access limited to user-selected read-only files
- No network or special permissions required

### Testing Structure
- Uses Swift Testing framework for unit tests
- XCTest framework for UI tests with screenshot capture
- Performance testing configured for app launch metrics