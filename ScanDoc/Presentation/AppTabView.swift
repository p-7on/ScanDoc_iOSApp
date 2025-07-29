//
//  AppTabView.swift
//  ScanDoc
//
//  Created by Simon Puchner on 02.06.25.
//

import SwiftUI

struct AppTabView: View {
    
    @State private var showScanner = false
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Files", systemImage: "folder", value: 0) {
                FilesView()
            }
            Tab("Scanner", systemImage: "scanner", value: 1) {
                Color.clear
                    .onAppear {
                        showScanner = true
                    }
            }
            Tab("Settings", systemImage: "gear", value: 2) {
                SettingsView()
            }
        }
        .fullScreenCover(isPresented: $showScanner, onDismiss: {
            selectedTab = 0
        }) {
            DocumentScannerView {
               showScanner = false // Zurück zu „Files“
            }
        }
    }
}

#Preview {
    AppTabView()
}
