public struct DeleteGroupMemberRequest: Codable {
    public let userId: UserId
    public let serverSignedMembershipCertificate: Certificate
    public let tokenKey: SecretKey
    public let notificationRecipients: [NotificationRecipient]

    public init(userId: UserId, serverSignedMembershipCertificate: Certificate, tokenKey: SecretKey, notificationRecipients: [NotificationRecipient]) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.tokenKey = tokenKey
        self.notificationRecipients = notificationRecipients
    }
}
