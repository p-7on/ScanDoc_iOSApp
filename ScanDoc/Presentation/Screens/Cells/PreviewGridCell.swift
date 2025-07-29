//
//  PreviewGridCell.swift
//  ScanDoc
//
//  Created by Simon Puchner on 03.06.25.
//

import SwiftUI

struct PreviewGridCell: View {
    
    let session: ScanSession
    let totalSpacing: CGFloat
    let itemWidth: CGFloat
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            if session.images.count > 1 {
                Image(uiImage: session.images[1].image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: itemWidth, height: itemWidth * 1.3)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 0.3))
                    .offset(x: 3, y: 3)
            }
            
            VStack {
                Image(uiImage: session.images.first!.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: itemWidth, height: itemWidth * 1.3)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 0.3))
                    .shadow(color: Color.primary.opacity(0.3), radius: 10)
                
                Text(session.sessionName)
                    .foregroundStyle(.primary)
                    .font(.subheadline)
                    .padding(.top, 2)
                
                Text(session.createdAt, style: .date)
                    .foregroundStyle(.secondary)
                    .font(.caption2)
            }
            
            if session.images.count > 1 {
                Text("\(session.images.count) pages")
                            .font(.caption2)
                            .foregroundColor(.white)
                            .padding(6)
                            .background(Color.black.opacity(0.7))
                            .clipShape(Capsule())
                            .overlay(Capsule()
                                .stroke(Color.black.opacity(0.7), lineWidth: 0.3))
                            .padding(6)
            }
        }
    }
}

#Preview {
    PreviewGridCell(session: ScanSession(images: [ScannedImage(image: UIImage(named: "_testimage")!), ScannedImage(image: UIImage(named: "_testimage")!)]), totalSpacing: 16, itemWidth: 160)
}
