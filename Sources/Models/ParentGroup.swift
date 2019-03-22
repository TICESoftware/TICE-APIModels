//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct ParentGroup: Codable, Hashable {
    public let groupId: String
    public let encryptedChildGroupKey: String?

    public init(groupId: String, encryptedChildGroupKey: String?) {
        self.groupId = groupId
        self.encryptedChildGroupKey = encryptedChildGroupKey
    }
}
