import Foundation

public struct AddGroupMemberRequest: Codable {
    public let encryptedMembership: Data
    public let serverSignedMembershipCertificate: Certificate
    public let newTokenKey: Data
    public let notificationRecipients: [NotificationRecipient]

    public init(encryptedMembership: Data, serverSignedMembershipCertificate: Certificate, newTokenKey: Data, notificationRecipients: [NotificationRecipient]) {
        self.encryptedMembership = encryptedMembership
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.newTokenKey = newTokenKey
        self.notificationRecipients = notificationRecipients
    }
}
