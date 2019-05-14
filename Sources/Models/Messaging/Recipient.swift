//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct Recipient: Codable, Hashable {
    public let userId: UserId
    public let serverSignedMembershipCertificate: Certificate
    public let encryptedMessageKey: Ciphertext

    public init(userId: UserId, serverSignedMembershipCertificate: Certificate, encryptedMessageKey: Ciphertext) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.encryptedMessageKey = encryptedMessageKey
    }
}
