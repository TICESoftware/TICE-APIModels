public struct AddGroupMemberRequest: Codable {
    public let encryptedMembership: Membership
    public let serverSignedMembershipCertificate: Membership
    public let newTokenKey: String
    public let notificationRecipients: [NotificationRecipient]

    public init(encryptedMembership: Membership, serverSignedMembershipCertificate: Membership, newTokenKey: String, notificationRecipients: [NotificationRecipient]) {
        self.encryptedMembership = encryptedMembership
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.newTokenKey = newTokenKey
        self.notificationRecipients = notificationRecipients
    }
}
