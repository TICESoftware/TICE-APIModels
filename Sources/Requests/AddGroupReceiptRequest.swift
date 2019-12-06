import Foundation

public struct AddGroupReceiptRequest: Codable {
    public let receiptId: ReceiptId
    public let notificationRecipients: [NotificationRecipient]

    public init(receiptId: ReceiptId, notificationRecipients: [NotificationRecipient]) {
        self.receiptId = receiptId
        self.notificationRecipients = notificationRecipients
    }
}
