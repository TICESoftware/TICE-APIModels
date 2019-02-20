public struct NotificationRecipient: Codable {
    public let userId: String
    public let serverSignedMembershipCertificate: Membership

    public init(userId: String, serverSignedMembershipCertificate: Membership) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
    }
}
