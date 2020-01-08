//
//  Copyright © 2018 Anbion. All rights reserved.
//  

import Foundation

public class Team: Group {
    public let groupId: GroupId
    public let groupKey: SecretKey
    public var joinMode: JoinMode
    public var permissionMode: PermissionMode
    public var url: URL
    public weak var parent: Group?
    @SynchronizedProperty public var children: [Group]
    @SynchronizedProperty public var members: Set<Member>
    @SynchronizedProperty public var settings: GroupSettings
    @SynchronizedProperty public var internalSettings: InternalSettings
    @SynchronizedProperty public var tag: GroupTag

    public var meetups: Set<Meetup> {
        return Set(children.compactMap { $0 as? Meetup })
    }

    public struct InternalSettings: Hashable, Codable {
        public init() {}
    }

    public enum MeetupState: Equatable {
        case none
        case invited
        case participating(meetup: Meetup)
    }

    public init(groupId: GroupId, groupKey: SecretKey, joinMode: JoinMode, permissionMode: PermissionMode, parent: Group? = nil, children: [Group] = [], members: Set<Member>, settings: GroupSettings, internalSettings: InternalSettings, tag: GroupTag, url: URL) {
        self.groupId = groupId
        self.groupKey = groupKey
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.parent = parent
        self.children = children
        self.members = members
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
