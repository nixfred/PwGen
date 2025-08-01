# Contributing to PwGen

Thank you for your interest in contributing to PwGen! This document provides guidelines for contributing to this Swift/SwiftUI password generator.

## Getting Started

### Prerequisites
- macOS with Xcode 16.4 or later
- Basic knowledge of Swift and SwiftUI
- Familiarity with iOS/macOS development

### Setting Up Development Environment
1. Fork this repository
2. Clone your fork locally
3. Open `PwGen.xcodeproj` in Xcode
4. Build and run to ensure everything works

## Types of Contributions

We welcome contributions in the following areas:

### Bug Fixes
- Fix issues with password generation
- Resolve UI/UX problems
- Address platform-specific bugs

### Feature Enhancements
- Improve existing functionality
- Add new character set options
- Enhance user interface elements

### Platform Improvements
- iOS-specific optimizations
- macOS-specific features
- visionOS enhancements

### Testing
- Add unit tests for new features
- Improve UI test coverage
- Add performance tests

## Development Guidelines

### Code Style
- Follow Swift naming conventions
- Use SwiftUI best practices
- Keep functions focused and single-purpose
- Add comments for complex logic

### Architecture
- Maintain the simple MVVM-light pattern
- Keep state management in SwiftUI `@State` properties
- Avoid external dependencies unless absolutely necessary

### Security Considerations
- Never add network functionality
- Maintain App Sandbox compliance
- Don't store or log generated passwords
- Use system-provided randomization only

## Pull Request Process

1. **Create a Feature Branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make Your Changes**
   - Write clean, tested code
   - Follow existing code patterns
   - Update documentation if needed

3. **Test Your Changes**
   - Run unit tests: `⌘+U` in Xcode
   - Test on all target platforms (iOS, macOS, visionOS)
   - Verify UI tests pass

4. **Commit Your Changes**
   ```bash
   git add .
   git commit -m "Add: brief description of your changes"
   ```

5. **Push and Create PR**
   ```bash
   git push origin feature/your-feature-name
   ```
   Then create a pull request on GitHub

### PR Requirements
- Clear description of changes
- Screenshots for UI changes
- Tests for new functionality
- Compatibility with all target platforms

## Code Review Process

1. Automated checks must pass
2. At least one maintainer review required
3. All conversations must be resolved
4. Squash commits when merging

## Reporting Issues

### Bug Reports
Include:
- iOS/macOS/visionOS version
- Device type
- Steps to reproduce
- Expected vs actual behavior
- Screenshots if applicable

### Feature Requests
Include:
- Clear description of the feature
- Use case/motivation
- Proposed implementation approach
- Compatibility considerations

## Questions?

Feel free to open an issue for any questions about contributing to PwGen.