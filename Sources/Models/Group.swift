//
//  Copyright © 2019 Anbion. All rights reserved.
//  

import Foundation

public typealias GroupTag = String

public protocol Group: class {
    var groupId: GroupId { get }
    var groupKey: String { get }
    var joinMode: JoinMode { get set }
    var permissionMode: PermissionMode { get set }
    var url: URL { get set }
    var parent: Group? { get set }
    var children: [Group] { get set }
    var members: Set<Member> { get set }
    var admins: Set<Member> { get set }
    var settings: GroupSettings { get set }
    var tag: GroupTag { get set }
}

extension Group {
    public var sortedMembers: [Member] {
        return Array(members)
    }

    public var shareURL: URL {
        var components = URLComponents()
        components.scheme = url.scheme
        components.host = url.host
        components.path = url.relativePath
        components.fragment = groupKey

        return components.url!
    }

    public func transformURLScheme() {
        var components = URLComponents()
        components.scheme = "letsmeet"
        components.host = url.host
        components.path = url.relativePath

        self.url = components.url!
    }

    public func participationStatus(member: Member) -> ParticipationStatus {
        if admins.contains(member) {
            return .admin
        } else {
            return members.contains(member) ? .member : .notParticipating
        }
    }

    public func hasDescendant(with groupId: GroupId) -> Bool {
        for child in children {
            if child.groupId == groupId || child.hasDescendant(with: groupId) {
                return true
            }
        }

        return false
    }
}

public enum ParticipationStatus {
    case notParticipating
    case member
    case admin
}
