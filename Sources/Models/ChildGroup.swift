//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct ChildGroup: Codable, Hashable {
    public let groupId: String
    public let parentEncryptedGroupKey: String?

    public init(groupId: String, parentEncryptedGroupKey: String?) {
        self.groupId = groupId
        self.parentEncryptedGroupKey = parentEncryptedGroupKey
    }
}
