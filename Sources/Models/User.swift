//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public class User: UserProtocol {
    public let userId: UserId
    public let publicSigningKey: PublicKey
    public let publicName: String?

    public init(userId: UserId, publicSigningKey: PublicKey, publicName: String?) {
        self.userId = userId
        self.publicSigningKey = publicSigningKey
        self.publicName = publicName
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
