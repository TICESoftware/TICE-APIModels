//
//  Copyright © 2019 Anbion. All rights reserved.
//  

import Foundation

public class Meetup: Group {
    public let groupId: GroupId
    public let groupKey: String
    public var joinMode: JoinMode
    public var permissionMode: PermissionMode
    public var url: URL
    public weak var parent: Group?
    public var children: [Group]
    public var members: Set<Member>
    public var admins: Set<Member>
    public var settings: GroupSettings

    public var internalSettings: InternalSettings

    public struct InternalSettings: Hashable, Codable {
        let location: String?
    }

    public init(groupId: GroupId, groupKey: String, joinMode: JoinMode, permissionMode: PermissionMode, parent: Group? = nil, children: [Group] = [], members: Set<Member>, admins: Set<Member>, settings: GroupSettings, internalSettings: InternalSettings, url: URL) {
        self.groupId = groupId
        self.groupKey = groupKey
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.parent = parent
        self.children = children
        self.members = members
        self.admins = admins
        self.settings = settings
        self.internalSettings = internalSettings
        self.url = url
    }
}

extension Meetup: Hashable {
    public static func == (lhs: Meetup, rhs: Meetup) -> Bool {
        return lhs.groupId == rhs.groupId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(groupId)
    }
}
