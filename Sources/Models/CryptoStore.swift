import Foundation

public struct HandshakeMaterial {
    public let identityKeyPair: KeyPair
    public let signedPrekeyPair: KeyPair
    public let oneTimePrekeyPairs: [KeyPair]

    public init(identityKeyPair: KeyPair, signedPrekeyPair: KeyPair, oneTimePrekeyPairs: [KeyPair]) {
        self.identityKeyPair = identityKeyPair
        self.signedPrekeyPair = signedPrekeyPair
        self.oneTimePrekeyPairs = oneTimePrekeyPairs
    }
}

public typealias ConversationId = UUID

public struct ConversationState: Codable {
    public let userId: UserId
    public let conversationId: ConversationId

    public let rootKey: SecretKey
    public let rootChainPublicKey: PublicKey
    public let rootChainPrivateKey: PrivateKey
    public var rootChainKeyPair: KeyPair { KeyPair(privateKey: rootChainPrivateKey, publicKey: rootChainPublicKey) }
    public let rootChainRemotePublicKey: PublicKey?
    public let sendingChainKey: SecretKey?
    public let receivingChainKey: SecretKey?

    public let sendMessageNumber: Int
    public let receivedMessageNumber: Int
    public let previousSendingChainLength: Int
    public let messageKeyCache: Data

    public init(userId: UserId, conversationId: ConversationId, rootKey: SecretKey, rootChainKeyPair: KeyPair, rootChainRemotePublicKey: PublicKey?, sendingChainKey: SecretKey?, receivingChainKey: SecretKey?, sendMessageNumber: Int, receivedMessageNumber: Int, previousSendingChainLength: Int, messageKeyCache: Data) {
        self.userId = userId
        self.conversationId = conversationId
        self.rootKey = rootKey
        self.rootChainPublicKey = rootChainKeyPair.publicKey
        self.rootChainPrivateKey = rootChainKeyPair.privateKey
        self.rootChainRemotePublicKey = rootChainRemotePublicKey
        self.sendingChainKey = sendingChainKey
        self.receivingChainKey = receivingChainKey
        self.sendMessageNumber = sendMessageNumber
        self.receivedMessageNumber = receivedMessageNumber
        self.previousSendingChainLength = previousSendingChainLength
        self.messageKeyCache = messageKeyCache
    }
}
