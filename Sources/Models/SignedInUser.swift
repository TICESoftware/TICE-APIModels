//
//  Copyright © 2018 Anbion. All rights reserved.
//  

import Foundation

public typealias PrivateKeys = String

public protocol Signer {
    var privateKeys: PrivateKeys { get }
}

public class SignedInUser: User, Signer {
    public var privateKeys: PrivateKeys

    public init(userId: UserId, publicKeys: UserPublicKeys, privateKeys: PrivateKeys) {
        self.privateKeys = privateKeys
        super.init(userId: userId, publicKeys: publicKeys)
    }
}
