//
//  ScanDocApp.swift
//  ScanDoc
//
//  Created by Simon Puchner on 28.05.25.
//

import SwiftUI

@main
struct ScanDocApp: App {
    
    @StateObject var documentScannerViewModel = DocumentScannerViewModel()
    
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(documentScannerViewModel)
                .tint(.primary)
        }
    }
}
