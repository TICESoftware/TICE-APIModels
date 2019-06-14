public struct DeleteGroupMemberRequest: Codable {
    public let userId: UserId
    public let notificationRecipients: [NotificationRecipient]

    public init(userId: UserId, notificationRecipients: [NotificationRecipient]) {
        self.userId = userId
        self.notificationRecipients = notificationRecipients
    }
}
