//
//  SettingsView.swift
//  ScanDoc
//
//  Created by Simon Puchner on 03.06.25.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var documentScannerViewModel: DocumentScannerViewModel
    
    @State var isSubscription = false
    
    let appAppearance = ["Light", "Dark", "System"]
    @State private var selectedAppAppearance = "Light"
    
    var body: some View {
        NavigationStack {
            Form {
                Section("App Settings") {
                    Picker("Appearance", selection: $selectedAppAppearance) {
                        ForEach(appAppearance, id: \.self) {
                            Text($0)
                        }
                    }
                    NavigationLink("Notifications") {
                        EmptyView()
                    }
                    
                }
                
                Toggle("Subscription", isOn: $isSubscription)
                NavigationLink("Help") {
                    EmptyView()
                }
                
                Section("About the App") {
                    LabeledContent("App Version", value: "1.0")
                    Link("Terms of Service", destination: URL(string: "www.google.at")!)
                }
                
                Section {
                    Button {
                        documentScannerViewModel.clearAllSessions()
                    } label: {
                        Text("Reset All Content and Settings")
                            .foregroundStyle(.red)
                    }
                }
            }
            .navigationTitle("Settings ⚙️")
        }
    }
}

#Preview {
    SettingsView()
}
