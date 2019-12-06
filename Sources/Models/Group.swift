//
//  Copyright © 2019 Anbion. All rights reserved.
//  

import Foundation

public typealias GroupTag = String

public protocol Group: class {
    var groupId: GroupId { get }
    var groupKey: SecretKey { get }
    var joinMode: JoinMode { get set }
    var permissionMode: PermissionMode { get set }
    var url: URL { get set }
    var parent: Group? { get set }
    var children: [Group] { get set }
    var members: Set<Member> { get set }
    var settings: GroupSettings { get set }
    var receipts: [Receipt] { get set }
    var tag: GroupTag { get set }
}
