import Foundation

public struct UpdateGroupInternalsRequest: Codable {
    public let newInternalSettings: Ciphertext
    public let notificationRecipients: [NotificationRecipient]

    public init(newInternalSettings: Ciphertext, notificationRecipients: [NotificationRecipient]) {
        self.newInternalSettings = newInternalSettings
        self.notificationRecipients = notificationRecipients
    }
}
