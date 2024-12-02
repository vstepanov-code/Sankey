import Foundation
import SwiftUI

public struct SankeyLink: Codable {
    public var source: String
    public var target: String
    public var value: Double
    public var color: String?
    
    /// Initializes a new instance of `SankeyLink`
    ///
    /// - Parameters:
    ///   - value: The magnitude of the link between the source and target nodes
    ///   - source: The identifier of the source node
    ///   - target: The identifier of the target node
    ///   - color: An optional `Color` to represent the link's color. Defaults to `nil`
    public init(_ value: Double, from source: String, to target: String, color: Color? = nil) {
        self.source = source
        self.target = target
        self.value = value
        self.color = color?.hex
    }
}
