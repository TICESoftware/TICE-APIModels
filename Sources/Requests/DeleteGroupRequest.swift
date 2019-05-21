public struct DeleteGroupRequest: Codable {
    public let serverSignedAdminCertificate: Certificate
    public let notificationRecipients: [NotificationRecipient]

    public init(serverSignedAdminCertificate: Certificate, notificationRecipients: [NotificationRecipient]) {
        self.serverSignedAdminCertificate = serverSignedAdminCertificate
        self.notificationRecipients = notificationRecipients
    }
}
