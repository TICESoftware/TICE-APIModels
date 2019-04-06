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

    public var internalSettings: InternalSettings
    public var meetups: Set<Meetup> {
        return Set(children.compactMap { $0 as? Meetup })
    }

    public var sortedMembers: [Member] {
        return Array(members)
    }

    public struct InternalSettings: Hashable, Codable {
    }

    public enum MeetupState {
        case none
        case invited
        case participating
    }

    public func meetupStateFor(member: Member) -> MeetupState {
        if meetups.isEmpty {
            return .none
        } else {
            for meetup in meetups {
                if meetup.members.contains(member) {
                    return .participating
                }
            }
            return .invited
        }
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

extension Team: Hashable {
    public static func == (lhs: Team, rhs: Team) -> Bool {
        return lhs.groupId == rhs.groupId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(groupId)
    }
}
