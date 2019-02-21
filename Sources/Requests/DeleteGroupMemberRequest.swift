public struct DeleteGroupMemberRequest: Codable {
    public let userId: String
    public let serverSignedMembershipCertificate: Membership
    public let tokenKey: String
    public let notificationRecipients: [NotificationRecipient]

    public init(userId: String, serverSignedMembershipCertificate: Membership, tokenKey: String, notificationRecipients: [NotificationRecipient]) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.tokenKey = tokenKey
        self.notificationRecipients = notificationRecipients
    }
}
