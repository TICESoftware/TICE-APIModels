import Foundation

public typealias RawReceipt = Data

public struct CreateReceiptRequest: Codable {

    public let receiptId: ReceiptId
    public let content: ReceiptContent

    public let usableBy: UserId?
    public let usableIn: GroupId?

    public let type: ReceiptType
    public let rawReceipt: RawReceipt

    public init(receiptId: ReceiptId, content: ReceiptContent, usableBy: UserId?, usableIn: GroupId?, type: ReceiptType, rawReceipt: RawReceipt) {
        self.receiptId = receiptId
        self.content = content
        self.usableBy = usableBy
        self.usableIn = usableIn
        self.type = type
        self.rawReceipt = rawReceipt
    }
}
