//
//  ScannedImage.swift
//  ScanDoc
//
//  Created by Simon Puchner on 03.06.25.
//

import Foundation
import SwiftUI

struct ScanSession: Identifiable, Hashable {
    let id = UUID()
    let createdAt: Date = Date()
    let sessionName: String = "Doc_" + Int.random(in: 1...999999).description
    var images: [ScannedImage]
}

struct ScannedImage: Identifiable, Hashable {
    let id = UUID()
    let imageName: String = "Scan_" + Int.random(in: 1...999999).description
    let image: UIImage
    
    var pngData: Data? {
        image.pngData()
    }
    
    var fileURL: URL? {
        guard let data = pngData else { return nil }
        let filename = FileManager.default.temporaryDirectory.appendingPathComponent("\(imageName).png")
        try? data.write(to: filename)
        return filename
    }
}
