public struct UpdateGroupInternalsRequest: Codable {
    public let newInternalSettings: String
    public let notificationRecipients: [NotificationRecipient]

    public init(newInternalSettings: String, notificationRecipients: [NotificationRecipient]) {
        self.newInternalSettings = newInternalSettings
        self.notificationRecipients = notificationRecipients
    }
}
