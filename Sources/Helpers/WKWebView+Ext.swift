//
//  File.swift
//  
//
//  Created by Slava Stepanov on 09/02/2025.
//

import WebKit
import UIKit

extension WKWebView {
    func captureWebViewSnapshot(
        configuration: WKSnapshotConfiguration? = nil,
        completion: @escaping (UIImage?) -> Void
    ) {
        self.takeSnapshot(with: configuration) { image, error in
            if let error = error {
                print("Error capturing WKWebView snapshot: \(error.localizedDescription)")
                completion(nil)
            } else {
                completion(image)
            }
        }
    }
}
