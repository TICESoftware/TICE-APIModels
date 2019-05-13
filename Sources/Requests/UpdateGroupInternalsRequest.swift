import Foundation

public struct UpdateGroupInternalsRequest: Codable {
    public let newInternalSettings: Data
    public let notificationRecipients: [NotificationRecipient]

    public init(newInternalSettings: Data, notificationRecipients: [NotificationRecipient]) {
        self.newInternalSettings = newInternalSettings
        self.notificationRecipients = notificationRecipients
    }
}
