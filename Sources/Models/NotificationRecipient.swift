//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct NotificationRecipient: Codable, Equatable {
    public let userId: UserId
    public let serverSignedMembershipCertificate: Certificate
    public let priority: MessagePriority?

    public init(userId: UserId, serverSignedMembershipCertificate: Certificate, priority: MessagePriority?) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.priority = priority
    }
}
