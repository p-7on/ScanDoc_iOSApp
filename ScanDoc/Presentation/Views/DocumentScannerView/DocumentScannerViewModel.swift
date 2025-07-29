//
//  DocumentScannerViewModel.swift
//  ScanDoc
//
//  Created by Simon Puchner on 02.06.25.
//

import Foundation
import SwiftUI

class DocumentScannerViewModel: ObservableObject {
    
    @Published var scanSessions: [ScanSession] = [
        ScanSession(images: [
            ScannedImage(image: UIImage(named: "_testimage")!),
            ScannedImage(image: UIImage(named: "_testimage")!)
        ]),
        ScanSession(images: [
            ScannedImage(image: UIImage(named: "_testimage")!)
        ])
    ]

        func addScanSession(from images: [UIImage]) {
            let scannedImages = images.map { ScannedImage(image: $0) }
            let session = ScanSession(images: scannedImages)
            scanSessions.append(session)
        }

        func clearAllSessions() {
            scanSessions.removeAll()
        }
}
