public struct DeleteGroupRequest: Codable {
    public let serverSignedOwnershipCertificate: String
    public let notificationRecipients: [NotificationRecipient]

    public init(serverSignedOwnershipCertificate: String, notificationRecipients: [NotificationRecipient]) {
        self.serverSignedOwnershipCertificate = serverSignedOwnershipCertificate
        self.notificationRecipients = notificationRecipients
    }
}
