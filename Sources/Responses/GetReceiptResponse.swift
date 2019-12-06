import Foundation

public struct GetReceiptResponse: Codable {
    public let receiptId: ReceiptId
    public let owner: UserId
    public let content: ReceiptContent
    public let expiresAt: Date?
    public let usableBy: UserId?
    public let usableIn: GroupId?

    public init(receiptId: ReceiptId, owner: UserId, content: ReceiptContent, expiresAt: Date?, usableBy: UserId?, usableIn: GroupId?)  {
        self.receiptId = receiptId
        self.owner = owner
        self.content = content
        self.expiresAt = expiresAt
        self.usableBy = usableBy
        self.usableIn = usableIn
    }

    public init(receipt: Receipt) {
        self.receiptId = receipt.receiptId
        self.owner = receipt.owner
        self.content = receipt.content
        self.expiresAt = receipt.expiresAt
        self.usableBy = receipt.usableBy
        self.usableIn = receipt.usableIn
    }
}
