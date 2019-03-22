//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public struct NotificationRecipient: Codable {
    public let userId: UserId
    public let serverSignedMembershipCertificate: Membership

    public init(userId: UserId, serverSignedMembershipCertificate: Membership) {
        self.userId = userId
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
    }
}
