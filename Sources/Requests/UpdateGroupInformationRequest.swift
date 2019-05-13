import Foundation

public struct UpdateGroupInformationRequest: Codable {
    public let newSettings: Data
    public let notificationRecipients: [NotificationRecipient]

    public init(newSettings: Data, notificationRecipients: [NotificationRecipient]) {
        self.newSettings = newSettings
        self.notificationRecipients = notificationRecipients
    }
}
