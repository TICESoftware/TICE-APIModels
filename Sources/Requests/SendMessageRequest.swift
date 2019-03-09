import Foundation

public struct SendMessageRequest: Codable {
    public let id: UUID
    public let senderId: Sender
    public let timestamp: Date
    public let encryptedMessage: String
    public let encryptedMessageSignature: String
    public let groupId: String?
    public let oldGroupHash: String?
    public let newGroupHash: String?
    public let serverSignedMembershipCertificate: Membership
    public let recipients: [Recipient]
    public let collapseId: String?
    public let messageTimeToLive: TimeInterval

    public init(id: UUID, senderId: String, timestamp: Date, encryptedMessage: String, encryptedMessageSignature: String, groupId: String? = nil, oldGroupHash: String? = nil, newGroupHash: String? = nil, serverSignedMembershipCertificate: Membership, recipients: [Recipient], collapseId: String?, messageTimeToLive: TimeInterval) {
        self.id = id
        self.senderId = senderId
        self.timestamp = timestamp
        self.encryptedMessage = encryptedMessage
        self.encryptedMessageSignature = encryptedMessageSignature
        self.groupId = groupId
        self.oldGroupHash = oldGroupHash
        self.newGroupHash = newGroupHash
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.recipients = recipients
        self.collapseId = collapseId
        self.messageTimeToLive = messageTimeToLive
    }
}
