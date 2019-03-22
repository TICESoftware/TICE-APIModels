public struct DeleteGroupMemberRequest: Codable {
    public let userId: UserId
    public let serverSignedMembershipCertificate: Membership
    public let tokenKey: String
    public let notificationRecipients: [NotificationRecipient]

    public init(userId: UserId, serverSignedMembershipCertificate: Membership, tokenKey: String, notificationRecipients: [NotificationRecipient]) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.tokenKey = tokenKey
        self.notificationRecipients = notificationRecipients
    }
}
