//
//  Copyright © 2019 Anbion. All rights reserved.
//

public typealias PrivateKey = Array<UInt8>
public typealias PublicKey = Array<UInt8>

public struct SigningKeyPair {
    public let privateKey: PrivateKey
    public let publicKey: PublicKey

    public init(privateKey: PrivateKey, publicKey: PublicKey) {
        self.privateKey = privateKey
        self.publicKey = publicKey
    }
}
