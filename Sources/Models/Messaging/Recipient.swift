//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct Recipient: Codable, Hashable {
    public let userId: UserId
    public let serverSignedMembershipCertificate: Certificate
    public let encryptedMessageKey: Ciphertext
    public let conversationInvitation: ConversationInvitation?

    public init(userId: UserId, serverSignedMembershipCertificate: Certificate, encryptedMessageKey: Ciphertext, conversationInvitation: ConversationInvitation?) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.encryptedMessageKey = encryptedMessageKey
        self.conversationInvitation = conversationInvitation
    }
}
