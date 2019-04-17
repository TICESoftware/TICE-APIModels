//
//  Copyright © 2019 Anbion. All rights reserved.
//  

import Foundation

public struct PublicGroup {
    public let groupId: GroupId
    public let type: GroupType
    public let parentGroupId: GroupId?
    public let groupKey: String
    public let joinMode: JoinMode
    public let permissionMode: PermissionMode
    public let url: URL
    public let groupSettings: GroupSettings
    public let etag: ETAG

    public init(groupId: GroupId, type: GroupType, parentGroupId: GroupId?, groupKey: String, joinMode: JoinMode, permissionMode: PermissionMode, url: URL, groupSettings: GroupSettings, etag: ETAG) {
        self.groupId = groupId
        self.type = type
        self.parentGroupId = parentGroupId
        self.groupKey = groupKey
        self.joinMode = joinMode
        self.permissionMode = permissionMode
        self.url = url
        self.groupSettings = groupSettings
        self.etag = etag
    }
}
