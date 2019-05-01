//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct UserPublicKeys: Codable, Hashable {
    public let signingKey: String

    public init(signingKey: String) {
        self.signingKey = signingKey
    }
}
