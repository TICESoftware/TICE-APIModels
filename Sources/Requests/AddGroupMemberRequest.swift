public struct AddGroupMemberRequest: Codable {
    public let encryptedMembership: Membership
    public let serverSignedMembershipCertificate: String
    public let newTokenKey: String
    public let notificationRecipients: [NotificationRecipient]

    public init(encryptedMembership: Membership, serverSignedMembershipCertificate: String, newTokenKey: String, notificationRecipients: [NotificationRecipient]) {
        self.encryptedMembership = encryptedMembership
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.newTokenKey = newTokenKey
        self.notificationRecipients = notificationRecipients
    }
}
