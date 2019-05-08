//
//  Copyright © 2018 Anbion. All rights reserved.
//  

import Foundation

public class Team: Group {
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
    public var tag: GroupTag

    public var internalSettings: InternalSettings
    public var meetups: Set<Meetup> {
        return Set(children.compactMap { $0 as? Meetup })
    }

    public struct InternalSettings: Hashable, Codable {
        public init() {}
    }

    public enum MeetupState {
        case none
        case invited
        case participating(meetup: Meetup)
    }

    public init(groupId: GroupId, groupKey: String, joinMode: JoinMode, permissionMode: PermissionMode, parent: Group? = nil, children: [Group] = [], members: Set<Member>, admins: Set<Member>, settings: GroupSettings, internalSettings: InternalSettings, tag: GroupTag, url: URL) {
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
        self.tag = tag
        self.url = url
    }
}

extension Team: Hashable {
    public static func == (lhs: Team, rhs: Team) -> Bool {
        return lhs.groupId == rhs.groupId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(groupId)
    }
}
