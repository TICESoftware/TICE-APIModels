//
//  Copyright © 2018 Anbion. All rights reserved.
//  

import Foundation

public struct Member: Hashable {
    public let user: User
    public let groupId: GroupId
    public let membership: Membership

    public init(user: User, groupId: GroupId, membership: Membership) {
        self.user = user
        self.groupId = groupId
        self.membership = membership
    }
}
