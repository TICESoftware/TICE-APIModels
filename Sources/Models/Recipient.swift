public struct Recipient: Codable {
    public let userId: String
    public let identityKey: String
    public let serverSignedMembershipCertificate: Membership
    public let encryptedMessageKey: String

    public init(userId: String, identityKey: String, serverSignedMembershipCertificate: Membership, encryptedMessageKey: String) {
        self.userId = userId
        self.identityKey = identityKey
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.encryptedMessageKey = encryptedMessageKey
    }
}

