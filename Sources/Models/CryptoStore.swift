import Foundation

public struct HandshakeMaterial {
    public let identityKeyPair: KeyPair
    public let signedPrekeyPair: KeyPair
    public let oneTimePrekeyPairs: [KeyPair]
}

public struct ConversationState {
    public let rootKey: SecretKey
    public let rootChainKeyPair: KeyPair
    public let rootChainRemotePublicKey: PublicKey?
    public let sendingChainKey: SecretKey?
    public let receivingChainKey: SecretKey?

    public let sendMessageNumber: Int
    public let receivedMessageNumber: Int
    public let previousSendingChainLength: Int
    public let messageKeyCache: Data
}
