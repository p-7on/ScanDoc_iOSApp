ScanDoc

ScanDoc is a work-in-progress iOS application designed for scanning, cropping, editing, sending, saving, and organizing documents. It features a built-in file system that allows users to efficiently manage scanned files. In the future, the app aims to support cross-platform sharing by transferring documents via Firebase to a web interface for download on macOS, Windows, and Linux.

📋 Features

- Scan documents using the device camera (VisionKit)
- Crop, edit, and enhance scanned documents
- Built-in file manager to sort and store documents
- Send documents via email or system share sheet

🔜 Planned:
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
