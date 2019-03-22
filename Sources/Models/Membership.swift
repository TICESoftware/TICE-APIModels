//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct Membership: Codable, Hashable {
    public let userId: UserId
    public let groupId: GroupId
    public let admin: Bool

    public init(userId: UserId, groupId: GroupId, admin: Bool = false) {
        self.userId = userId
        self.groupId = groupId
        self.admin = admin
    }
}
