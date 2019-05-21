import Foundation

public struct AddGroupMemberRequest: Codable {
    public let encryptedMembership: Ciphertext
    public let userId: UserId
    public let newTokenKey: SecretKey
    public let notificationRecipients: [NotificationRecipient]

    public init(encryptedMembership: Ciphertext, userId: UserId, newTokenKey: SecretKey, notificationRecipients: [NotificationRecipient]) {
        self.encryptedMembership = encryptedMembership
        self.userId = userId
        self.newTokenKey = newTokenKey
        self.notificationRecipients = notificationRecipients
    }
}
