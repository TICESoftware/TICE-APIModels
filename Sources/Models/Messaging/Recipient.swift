//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct Recipient: Codable, Hashable {
    public let userId: UserId
    public let serverSignedMembershipCertificate: Membership
    public let encryptedMessageKey: String

    public init(userId: UserId, serverSignedMembershipCertificate: Membership, encryptedMessageKey: String) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.encryptedMessageKey = encryptedMessageKey
    }
}
