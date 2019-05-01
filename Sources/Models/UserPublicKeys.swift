//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct UserPublicKeys: Codable, Hashable {
    public let certificateKey: String

    public init(certificateKey: String) {
        self.certificateKey = certificateKey
    }
}
