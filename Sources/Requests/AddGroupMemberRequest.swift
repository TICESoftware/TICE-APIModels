import Foundation

public struct AddGroupMemberRequest: Codable {
    public let encryptedMembership: Ciphertext
    public let serverSignedMembershipCertificate: Certificate
    public let newTokenKey: SecretKey
    public let notificationRecipients: [NotificationRecipient]

    public init(encryptedMembership: Ciphertext, serverSignedMembershipCertificate: Certificate, newTokenKey: SecretKey, notificationRecipients: [NotificationRecipient]) {
        self.encryptedMembership = encryptedMembership
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.newTokenKey = newTokenKey
        self.notificationRecipients = notificationRecipients
    }
}
