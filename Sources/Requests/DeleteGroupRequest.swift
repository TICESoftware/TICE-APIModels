public struct DeleteGroupRequest: Codable {
    public let serverSignedOwnershipCertificate: Membership
    public let notificationRecipients: [NotificationRecipient]

    public init(serverSignedOwnershipCertificate: Membership, notificationRecipients: [NotificationRecipient]) {
        self.serverSignedOwnershipCertificate = serverSignedOwnershipCertificate
        self.notificationRecipients = notificationRecipients
    }
}
