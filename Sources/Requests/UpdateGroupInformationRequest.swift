public struct UpdateGroupInformationRequest: Codable {

    public let serverSignedMembershipCertificate: Membership
    public let newSettings: String
    public let notificationRecipients: [NotificationRecipient]

    public init(serverSignedMembershipCertificate: Membership, newSettings: String, notificationRecipients: [NotificationRecipient]) {
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.newSettings = newSettings
        self.notificationRecipients = notificationRecipients
    }
}
