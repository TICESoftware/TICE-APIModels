//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct NotificationRecipient: Codable, Equatable {
    public let userId: UserId
    public let serverSignedMembershipCertificate: Certificate

    public init(userId: UserId, serverSignedMembershipCertificate: Certificate) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
    }
}
