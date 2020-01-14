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

public struct ConversationState: Codable {
    public let rootKey: SecretKey
    public let rootChainKeyPair: KeyPair
    public let rootChainRemotePublicKey: PublicKey?
    public let sendingChainKey: SecretKey?
    public let receivingChainKey: SecretKey?

    public let sendMessageNumber: Int
    public let receivedMessageNumber: Int
    public let previousSendingChainLength: Int
    public let messageKeyCache: Data

    public init(rootKey: SecretKey, rootChainKeyPair: KeyPair, rootChainRemotePublicKey: PublicKey?, sendingChainKey: SecretKey?, receivingChainKey: SecretKey?, sendMessageNumber: Int, receivedMessageNumber: Int, previousSendingChainLength: Int, messageKeyCache: Data) {
        self.rootKey = rootKey
        self.rootChainKeyPair = rootChainKeyPair
        self.rootChainRemotePublicKey = rootChainRemotePublicKey
        self.sendingChainKey = sendingChainKey
        self.receivingChainKey = receivingChainKey
        self.sendMessageNumber = sendMessageNumber
        self.receivedMessageNumber = receivedMessageNumber
        self.previousSendingChainLength = previousSendingChainLength
        self.messageKeyCache = messageKeyCache
    }
}
