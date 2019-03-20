//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct CompactMeetUp: Codable {
    public let meetUpId: UUID
    public let adminId: String
    public let memberIds: [String]
    public let name: String?
    public let location: String?

    public init(meetUpId: UUID, adminId: String, memberIds: [String], name: String?, location: String?) {
        self.meetUpId = meetUpId
        self.adminId = adminId
        self.memberIds = memberIds
        self.name = name
        self.location = location
    }
}
