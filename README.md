ScanDoc

ScanDoc is a work-in-progress iOS application designed for scanning, editing, organizing, and sharing documents. It features a built-in file system that allows users to manage scanned documents efficiently, with support for cutting, annotating, and sending files. The app is intended to be platform-independent in the future, enabling document transfer via Firebase to a web interface for download across macOS, Windows, and Linux.

📋 Features

- Scan documents using the device camera (VisionKit)
- Crop, edit, and enhance scanned documents
- Built-in file manager to sort and store documents
- Send documents via email or system share sheet
Planned:
- AirDrop support (iOS-to-iOS)
- Cross-platform transfer using Firebase and web download interface

🛠️ Tech Stack & Architecture

- SwiftUI + UIKit – For flexible and native UI development
- MVVM + Clean Architecture – For modular, maintainable code structure
- VisionKit – For document scanning and OCR capabilities
- SwiftData – For modern local data persistence
- ToCropViewController – For precise document cropping
- Firebase – Planned backend for cloud-based sharing and syncing

📸📱 Screenshots

<img src="https://github.com/p-7on/ScanDoc_iOSApp/blob/f038e26c2aa6ca23e0019249f361a92fe60b3adf/Screenshots/visionkit_scanner-portrait.png?raw=true" width="250" /> <img src="https://github.com/p-7on/ScanDoc_iOSApp/blob/f038e26c2aa6ca23e0019249f361a92fe60b3adf/Screenshots/filesview-portrait.png?raw=true" width="250" /> <img src="https://github.com/p-7on/ScanDoc_iOSApp/blob/f038e26c2aa6ca23e0019249f361a92fe60b3adf/Screenshots/documentview-portrait.png?raw=true" width="250" /> 

<img src="https://github.com/p-7on/ScanDoc_iOSApp/blob/f038e26c2aa6ca23e0019249f361a92fe60b3adf/Screenshots/settingsview-portrait.png?raw=true" width="250" />

more screenshots coming soon...
