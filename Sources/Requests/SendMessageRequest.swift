import Foundation

public struct SendMessageRequest: Codable {
    public let id: MessageId
    public let senderId: UserId
    public let timestamp: Date
    public let encryptedMessage: Ciphertext
    public let serverSignedMembershipCertificate: Certificate
    public let recipients: [Recipient]
    public let priority: MessagePriority
    public let collapseId: String?
    public let messageTimeToLive: TimeInterval

    public init(id: MessageId, senderId: UserId, timestamp: Date, encryptedMessage: Ciphertext, serverSignedMembershipCertificate: Certificate, recipients: [Recipient], priority: MessagePriority, collapseId: String?, messageTimeToLive: TimeInterval) {
        self.id = id
        self.senderId = senderId
        self.timestamp = timestamp
        self.encryptedMessage = encryptedMessage
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.recipients = recipients
        self.priority = priority
        self.collapseId = collapseId
        self.messageTimeToLive = messageTimeToLive
    }
}
