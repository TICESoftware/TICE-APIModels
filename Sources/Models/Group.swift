//
//  Copyright © 2019 Anbion. All rights reserved.
//  

import Foundation

public typealias GroupTag = String

public protocol Group {
    var groupId: GroupId { get }
    var groupKey: SecretKey { get }
    var owner: UserId { get }
    var joinMode: JoinMode { get }
    var permissionMode: PermissionMode { get }
    var tag: GroupTag { get set }
}
