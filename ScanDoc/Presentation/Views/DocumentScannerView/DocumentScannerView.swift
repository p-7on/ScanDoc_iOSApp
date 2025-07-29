//
//  ContentView.swift
//  ScanDoc
//
//  Created by Simon Puchner on 28.05.25.
//

import SwiftUI

struct DocumentScannerView: View {
    
    @EnvironmentObject var viewModel: DocumentScannerViewModel
    var onDismiss: () -> Void
    
    var body: some View {
        VNDocumentCameraViewControllerRepresentable(onScanCompleted: { images in viewModel.addScanSession(from: images)}, onDismiss: onDismiss)
            .ignoresSafeArea()
    }
}

#Preview {
    // DocumentScannerView()
}
