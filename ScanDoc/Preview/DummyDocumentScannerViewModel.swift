//
//  DummyData.swift
//  ScanDoc
//
//  Created by Simon Puchner on 07.06.25.
//
import SwiftUI

extension DocumentScannerViewModel {
    static var dummy: DocumentScannerViewModel {
        let vm = DocumentScannerViewModel()
        vm.scanSessions = [
            ScanSession(images: [
                ScannedImage(image: UIImage(named: "_testimage")!),
                ScannedImage(image: UIImage(named: "_testimage")!)
            ]),
            ScanSession(images: [
                ScannedImage(image: UIImage(named: "_testimage")!)
            ]),
            ScanSession(images: [
                ScannedImage(image: UIImage(named: "_testimage")!),
                ScannedImage(image: UIImage(named: "_testimage")!),
                ScannedImage(image: UIImage(named: "_testimage")!),
                ScannedImage(image: UIImage(named: "_testimage")!)
            ]),
            ScanSession(images: [
                ScannedImage(image: UIImage(named: "_testimage")!)
            ]),
            ScanSession(images: [
                ScannedImage(image: UIImage(named: "_testimage")!),
                ScannedImage(image: UIImage(named: "_testimage")!)
            ]),
            ScanSession(images: [
                ScannedImage(image: UIImage(named: "_testimage")!),
                ScannedImage(image: UIImage(named: "_testimage")!)
            ])
    ]
        return vm
    }
}
