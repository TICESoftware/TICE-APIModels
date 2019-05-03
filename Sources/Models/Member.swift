//
//  Copyright © 2018 Anbion. All rights reserved.
//  

import Foundation

public struct Member: Hashable {
    public let user: User
    public let membership: Membership

    public init(user: User, membership: Membership) {
        self.user = user
        self.membership = membership
    }
}
