//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct ChildGroup: Codable, Hashable {
    public let groupId: GroupId
    public let parentEncryptedGroupKey: SecretKey?

    public init(groupId: GroupId, parentEncryptedGroupKey: SecretKey?) {
        self.groupId = groupId
        self.parentEncryptedGroupKey = parentEncryptedGroupKey
    }
}
