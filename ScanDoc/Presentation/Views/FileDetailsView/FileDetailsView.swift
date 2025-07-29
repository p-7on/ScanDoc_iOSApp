//
//  FileDetailsView.swift
//  ScanDoc
//
//  Created by Simon Puchner on 03.06.25.
//

import SwiftUI

struct FileDetailsView: View {
    
    var session: [ScannedImage]
    @State private var currentIndex = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $currentIndex) {
                ForEach(Array(session.enumerated()), id: \.offset) { index, image in
                    Image(uiImage: image.image)
                        .resizable()
                        .scaledToFit()
                        .border(Color.black)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .tag(index)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        .toolbar {
            ToolbarItemGroup(placement: .topBarTrailing) {
                if let pdfURL = session[currentIndex].generatePDF() {
                    ShareLink(item: pdfURL) {
                        Label("Share", systemImage: "square.and.arrow.up")
                    }
                }

                Spacer()
                
                Button {
                    // TODO: Edit
                } label: {
                    Label("Edit", systemImage: "slider.horizontal.3")
                }
                
                Spacer()
                
                Button {
                    // TODO: Delete
                } label: {
                    Label("Delete", systemImage: "trash")
                }
                .padding(.trailing)
            }
        }
    }
}

#Preview {
    FileDetailsView(session: [ScannedImage(image: UIImage(named: "_testimage")!), ScannedImage(image: UIImage(named: "_testimage")!)])
}
