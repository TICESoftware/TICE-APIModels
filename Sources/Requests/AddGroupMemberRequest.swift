import Foundation

public struct AddGroupMemberRequest: Codable {
    public let encryptedMembership: Ciphertext
    public let serverSignedMembershipCertificate: Certificate
    public let newTokenKey: Data
    public let notificationRecipients: [NotificationRecipient]

    public init(encryptedMembership: Ciphertext, serverSignedMembershipCertificate: Certificate, newTokenKey: Data, notificationRecipients: [NotificationRecipient]) {
        self.encryptedMembership = encryptedMembership
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.newTokenKey = newTokenKey
        self.notificationRecipients = notificationRecipients
    }
}
