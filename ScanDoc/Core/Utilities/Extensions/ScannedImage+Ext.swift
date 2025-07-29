//
//  ScannedImage+Ext.swift
//  ScanDoc
//
//  Created by Simon Puchner on 04.07.25.
//

import Foundation
import UIKit

extension ScannedImage {
    func generatePDF() -> URL? {
        let pdfRenderer = UIGraphicsPDFRenderer(bounds: CGRect(origin: .zero, size: image.size))
        let data = pdfRenderer.pdfData { ctx in
            ctx.beginPage()
            image.draw(at: .zero)
        }
        
        let tempULR = FileManager.default.temporaryDirectory.appendingPathComponent("\(imageName).pdf")
        
        do {
            try data.write(to: tempULR)
            return tempULR
        } catch {
            print("Failed to create PDF: \(error)")
            return nil
        }
    }
}
