//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public typealias Signature = Data

public struct UserPublicKeys: Codable, Hashable {
    public let signingKey: PublicKey
    public let identityKey: PublicKey
    public let signedPrekey: PublicKey
    public let prekeySignature: Signature
    public let oneTimePrekeys: [PublicKey]

    public init(signingKey: PublicKey, identityKey: PublicKey, signedPrekey: PublicKey, prekeySignature: Signature, oneTimePrekeys: [PublicKey]) {
        self.signingKey = signingKey
        self.identityKey = identityKey
        self.signedPrekey = signedPrekey
        self.prekeySignature = prekeySignature
        self.oneTimePrekeys = oneTimePrekeys
    }
}
