import Foundation

public struct UpdateGroupInformationRequest: Codable {
    public let newSettings: Ciphertext
    public let notificationRecipients: [NotificationRecipient]

    public init(newSettings: Ciphertext, notificationRecipients: [NotificationRecipient]) {
        self.newSettings = newSettings
        self.notificationRecipients = notificationRecipients
    }
}
