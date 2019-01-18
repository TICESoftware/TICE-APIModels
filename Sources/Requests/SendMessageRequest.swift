import Foundation

public struct SendMessageRequest: Codable {
    public let id: UUID
    public let timestamp: Date
    public let encryptedMessage: String
    public let encryptedMessageSignature: String
    public let serverSignedMembershipCertificate: String
    public let recipients: [Recipient]
    public let collapseId: String?
    public let messageTimeToLive: Int

    public init(id: UUID, timestamp: Date, encryptedMessage: String, encryptedMessageSignature: String, serverSignedMembershipCertificate: String, recipients: [Recipient], collapseId: String?, messageTimeToLive: Int) {
        self.id = id
        self.timestamp = timestamp
        self.encryptedMessage = encryptedMessage
        self.encryptedMessageSignature = encryptedMessageSignature
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.recipients = recipients
        self.collapseId = collapseId
        self.messageTimeToLive = messageTimeToLive
    }
}
