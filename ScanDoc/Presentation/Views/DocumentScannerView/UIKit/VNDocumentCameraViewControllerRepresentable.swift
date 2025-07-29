//
//  VNDocumentCameraViewControllerRepresentable.swift
//  ScanDoc
//
//  Created by Simon Puchner on 28.05.25.
//

import Foundation
import UIKit
import VisionKit
import SwiftUI

struct VNDocumentCameraViewControllerRepresentable: UIViewControllerRepresentable {
    var onScanCompleted: ([UIImage]) -> Void
    var onDismiss: () -> Void

    func makeUIViewController(context: Context) -> VNDocumentCameraViewController {
        let controller = VNDocumentCameraViewController()
        controller.delegate = context.coordinator
        return controller
    }

    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(onScanCompleted: onScanCompleted, onDismiss: onDismiss)
    }

    final class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate {
        var onScanCompleted: ([UIImage]) -> Void
        var onDismiss: () -> Void

        init(onScanCompleted: @escaping ([UIImage]) -> Void, onDismiss: @escaping () -> Void) {
            self.onScanCompleted = onScanCompleted
            self.onDismiss = onDismiss
        }

        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
            controller.dismiss(animated: true) {
                let images = (0..<scan.pageCount).compactMap { scan.imageOfPage(at: $0) }
                self.onScanCompleted(images)
                self.onDismiss()
            }
        }

        func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
            controller.dismiss(animated: true, completion: onDismiss)
        }

        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error) {
            print("Scanner Error: \(error.localizedDescription)")
            controller.dismiss(animated: true, completion: onDismiss)
        }
    }
}
