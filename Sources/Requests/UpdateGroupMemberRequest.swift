import Foundation

public struct UpdateGroupMemberRequest: Codable {
    public let userId: UserId
    public let encryptedMembership: Ciphertext
    public let notificationRecipients: [NotificationRecipient]
    
    public init(encryptedMembership: Ciphertext, userId: UserId, notificationRecipients: [NotificationRecipient]) {
        self.encryptedMembership = encryptedMembership
        self.userId = userId
        self.notificationRecipients = notificationRecipients
    }
}
