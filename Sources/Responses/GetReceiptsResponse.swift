import Foundation

public struct GetReceiptsResponse: Codable {
    public let receipts: [Receipt]

    public init(receipts: [Receipt]) {
        self.receipts = receipts
    }
}
