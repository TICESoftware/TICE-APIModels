//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public typealias Ciphertext = Data

public struct ParentGroup: Codable, Hashable {
    public let groupId: GroupId
    public let encryptedChildGroupKey: Ciphertext?

    public init(groupId: GroupId, encryptedChildGroupKey: Ciphertext?) {
        self.groupId = groupId
        self.encryptedChildGroupKey = encryptedChildGroupKey
    }
}
