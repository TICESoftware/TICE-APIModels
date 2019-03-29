public struct DeleteGroupRequest: Codable {
    public let serverSignedAdminCertificate: Membership
    public let notificationRecipients: [NotificationRecipient]

    public init(serverSignedAdminCertificate: Membership, notificationRecipients: [NotificationRecipient]) {
        self.serverSignedAdminCertificate = serverSignedAdminCertificate
        self.notificationRecipients = notificationRecipients
    }
}
