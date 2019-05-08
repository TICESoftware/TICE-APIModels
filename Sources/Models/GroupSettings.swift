//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct GroupSettings: Hashable, Codable {
    public var name: String

    public init(name: String) {
        self.name = name
    }
}
