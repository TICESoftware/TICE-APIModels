import Foundation

public struct AddGroupReceiptResponse: Codable {
    public let receipt: Receipt
    public let groupTag: GroupTag

    public init(receipt: Receipt, groupTag: GroupTag) {
        self.receipt = receipt
        self.groupTag = groupTag
    }
}
