//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct Parent: Codable, Hashable {
    public let groupId: String
    public let encryptedChildGroupKey: String?
}
