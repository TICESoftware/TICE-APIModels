//
//  Copyright © 2019 Anbion. All rights reserved.
//  

import Foundation

public typealias SecretKey = Data

public class Meetup: Group {
    public let groupId: GroupId
    public let groupKey: SecretKey
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

    public struct InternalSettings: Codable {
        fileprivate var location: Location?
    }

    public init(groupId: GroupId, groupKey: SecretKey, joinMode: JoinMode, permissionMode: PermissionMode, parent: Group? = nil, children: [Group] = [], members: Set<Member>, admins: Set<Member>, settings: GroupSettings, internalSettings: InternalSettings, tag: GroupTag, url: URL) {
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

extension Meetup: Hashable {
    public static func == (lhs: Meetup, rhs: Meetup) -> Bool {
        return lhs.groupId == rhs.groupId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(groupId)
    }
}

#if canImport(CoreLocation)
import CoreLocation

public extension Meetup.InternalSettings {
    init(location: CLLocation?) {
        self.location = location?.location
    }

    var meetingPoint: CLLocation? {
        get {
            guard let location = location else { return nil }
            return CLLocation(location)
        }

        set {
            location = newValue?.location
        }
    }
}
#endif
