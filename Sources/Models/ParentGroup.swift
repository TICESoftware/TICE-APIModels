//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct ParentGroup: Codable, Hashable {
    public let groupId: GroupId
    public let encryptedChildGroupKey: SecretKey?

    public init(groupId: GroupId, encryptedChildGroupKey: SecretKey?) {
        self.groupId = groupId
        self.encryptedChildGroupKey = encryptedChildGroupKey
    }
}
