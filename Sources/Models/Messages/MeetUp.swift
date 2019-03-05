//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct MeetUpInvitation: Codable {
    public let meetUpId: UUID
    public let groupId: String
    public let ownerId: String
    public let name: String?
    public let location: String?

    public init(meetUpId: UUID, groupId: String, ownerId: String, name: String? = nil, location: String? = nil) {
        self.meetUpId = meetUpId
        self.groupId = groupId
        self.ownerId = ownerId
        self.name = name
        self.location = location
    }
}

public struct MeetUpDeletion: Codable {
    public let meetUpId: UUID
    public let groupId: String

    public init(meetUpId: UUID, groupId: String) {
        self.meetUpId = meetUpId
        self.groupId = groupId
    }
}

public struct MeetUpJoin: Codable {
    public let meetUpId: UUID
    public let groupId: String
    public let userId: String

    public init(meetUpId: UUID, groupId: String, userId: String) {
        self.meetUpId = meetUpId
        self.groupId = groupId
        self.userId = userId
    }
}

public struct MeetUpLeave: Codable {
    public let meetUpId: UUID
    public let groupId: String
    public let userId: String

    public init(meetUpId: UUID, groupId: String, userId: String) {
        self.meetUpId = meetUpId
        self.groupId = groupId
        self.userId = userId
    }
}
