public struct UpdateGroupInternalsRequest: Codable {

    public let serverSignedMembershipCertificate: Membership
    public let newInternalSettings: String
    public let notificationRecipients: [NotificationRecipient]

    public init(serverSignedMembershipCertificate: Membership, newInternalSettings: String, notificationRecipients: [NotificationRecipient]) {
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.newInternalSettings = newInternalSettings
        self.notificationRecipients = notificationRecipients
    }
}
