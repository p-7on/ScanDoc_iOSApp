//
//  FilesView.swift
//  ScanDoc
//
//  Created by Simon Puchner on 02.06.25.
//

import SwiftUI

struct FilesView: View {
    
    @EnvironmentObject var documentScannerViewModel: DocumentScannerViewModel
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                let width = geometry.size.width
                let totalSpacing: CGFloat = 16
                let itemWidth = width > 0 ? (width - totalSpacing - 32) / 2 : 0
                
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(documentScannerViewModel.scanSessions) { session in
                            NavigationLink(value: session) {
                                PreviewGridCell(session: session, totalSpacing: totalSpacing, itemWidth: itemWidth)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .contextMenu {
                                Button {
                                    
                                } label: {
                                    Label("Information", systemImage: "info.circle")
                                }
                                Button {
                                    
                                } label: {
                                    Label("Rename", systemImage: "pencil")
                                }
                                Button {
                                    
                                } label: {
                                    Label("Copy", systemImage: "document.on.document")
                                }
                                Button(role: .destructive) {
                                    
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding([.top, .bottom])
                }
            }
            .navigationDestination(for: ScanSession.self, destination: { session in
                FileDetailsView(session: session.images)
            })
            .background(Color(UIColor.systemGroupedBackground))
            .navigationTitle("Scanned Files 📄")
        }
    }
}

#Preview {
    FilesView()
        .environmentObject(DocumentScannerViewModel.dummy)
}
