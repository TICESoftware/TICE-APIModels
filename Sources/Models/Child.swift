//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct Child: Codable, Hashable {
    public let groupId: String
    public let parentEncryptedGroupKey: String?
}
