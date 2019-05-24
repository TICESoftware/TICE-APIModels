//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public typealias PrivateKey = Data
public typealias PublicKey = Data

public struct KeyPair {
    public let privateKey: PrivateKey
    public let publicKey: PublicKey

    public init(privateKey: PrivateKey, publicKey: PublicKey) {
        self.privateKey = privateKey
        self.publicKey = publicKey
    }
}
