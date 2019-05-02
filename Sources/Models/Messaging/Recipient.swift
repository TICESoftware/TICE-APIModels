//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct Recipient: Codable, Hashable {
    public let userId: UserId
    public let serverSignedMembershipCertificate: Certificate
    public let encryptedMessageKey: String

    public init(userId: UserId, serverSignedMembershipCertificate: Certificate, encryptedMessageKey: String) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.encryptedMessageKey = encryptedMessageKey
    }
}
