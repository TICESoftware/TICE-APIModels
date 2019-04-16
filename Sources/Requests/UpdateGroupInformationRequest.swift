public struct UpdateGroupInformationRequest: Codable {
    public let newSettings: String
    public let notificationRecipients: [NotificationRecipient]

    public init(newSettings: String, notificationRecipients: [NotificationRecipient]) {
        self.newSettings = newSettings
        self.notificationRecipients = notificationRecipients
    }
}
