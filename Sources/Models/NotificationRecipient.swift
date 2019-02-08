public struct NotificationRecipient: Codable {
    public let userId: String
    public let serverSignedMembershipCertificate: String

    public init(userId: String, serverSignedMembershipCertificate: String) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
    }
}
