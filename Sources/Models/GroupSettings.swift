//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct GroupSettings: Hashable, Codable {
    public var owner: UserId
    public var name: String?

    public init(owner: UserId, name: String?) {
        self.owner = owner
        self.name = name
    }
}
