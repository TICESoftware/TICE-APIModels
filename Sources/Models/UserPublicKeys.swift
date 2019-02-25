//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct UserPublicKeys: Codable, Hashable {
    public let identityKey: String
    public let ephemeralKey: String
    public let signedPreKey: String
    public let preKeys: [String]

    public init(identityKey: String, ephemeralKey: String, signedPreKey: String, preKeys: [String]) {
        self.identityKey = identityKey
        self.ephemeralKey = ephemeralKey
        self.signedPreKey = signedPreKey
        self.preKeys = preKeys
    }
}
