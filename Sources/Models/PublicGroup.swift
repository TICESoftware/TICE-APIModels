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
}
