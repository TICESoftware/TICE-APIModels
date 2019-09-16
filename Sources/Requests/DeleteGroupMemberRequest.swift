public struct DeleteGroupMemberRequest: Codable {
    public let userId: UserId
    public let serverSignedMembershipCertificate: Certificate
    public let notificationRecipients: [NotificationRecipient]

    public init(userId: UserId, serverSignedMembershipCertificate: Certificate, notificationRecipients: [NotificationRecipient]) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.notificationRecipients = notificationRecipients
    }
}
