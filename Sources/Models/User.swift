//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public class User: UserProtocol {
    public let userId: UserId
    public let publicKeys: UserPublicKeys

    public var lastLocation: UserLocation?

    public init(userId: UserId, publicKeys: UserPublicKeys) {
        self.userId = userId
        self.publicKeys = publicKeys
    }
}

extension User: Hashable {
    public static func == (lhs: User, rhs: User) -> Bool {
        return lhs.userId == rhs.userId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(userId)
    }
}
