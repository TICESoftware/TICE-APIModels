//
//  Copyright © 2019 Anbion. All rights reserved.
//

public typealias PrivateKey = Array<UInt8>
public typealias PublicKey = Array<UInt8>

public struct KeyPair {
    public let privateKey: PrivateKey
    public let publicKey: PublicKey

    public init(privateKey: PrivateKey, publicKey: PublicKey) {
        self.privateKey = privateKey
        self.publicKey = publicKey
    }
}

public struct UserKeyPairs {
    public let signingKeyPair: KeyPair
    public let identityKeyPair: KeyPair
    public let signedPrekeyPair: KeyPair
    public let oneTimePrekeyPairs: [KeyPair]

    public init(signingKeyPair: KeyPair, identityKeyPair: KeyPair, signedPrekeyPair: KeyPair, oneTimePrekeyPairs: [KeyPair]) {
        self.signingKeyPair = signingKeyPair
        self.identityKeyPair = identityKeyPair
        self.signedPrekeyPair = signedPrekeyPair
        self.oneTimePrekeyPairs = oneTimePrekeyPairs
    }
}
