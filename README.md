# Network Checker


[![GitHub issues](https://img.shields.io/github/issues/CADEION/Network-Checker.svg)](https://github.com/CADEION/Network-Checker/issues)
[![GitHub license](https://img.shields.io/github/license/CADEION/Network-Checker.svg)](https://github.com/CADEION/Network-Checker/blob/main/LICENSE)

## Overview

**Network Checker** is a Flutter-based mobile application that detects the current network status of your device, such as being connected to Wi-Fi, Mobile Data, or offline. Built using the [Bloc](https://bloclibrary.dev/#/) state management pattern, the app provides real-time updates on network changes in a responsive and performant way.

## Features

- Detects Wi-Fi, Mobile Data, or no internet connection.
- Real-time updates on network status changes.
- Responsive UI to reflect the current connection state.
- Built with [Bloc](https://bloclibrary.dev/#/) for scalable state management.
- Cross-platform support for Android and iOS.

## Screenshots

| Wi-Fi Connected  | Mobile Data  | Offline  |
|------------------|--------------|----------|
| ![Wi-Fi](screenshots/wifi.png) | ![Mobile Data](screenshots/mobile_data.png) | ![Offline](screenshots/offline.png) |

## Architecture

This application follows the Bloc pattern, which separates the business logic from the UI layer, making it easy to manage and scale.

- **Bloc**: Handles the business logic for detecting network changes and updating the UI.
- **Flutter**: Frontend framework for building cross-platform mobile applications.

## Getting Started

### Prerequisites

Ensure that you have the following installed on your machine:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)
- Android Studio or Xcode (for running on an emulator or device)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/CADEION/Network-Checker.git
   cd Network-Checker
