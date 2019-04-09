//
//  Copyright © 2018 Anbion. All rights reserved.
//  

import Foundation

public struct Member: Hashable {
    public let user: User
    public let groupId: GroupId

    public var selfSignedMembershipCertificate: Membership?
    public var serverSignedMembershipCertificate: Membership?
    public var adminSignedMembershipCertificate: Membership?

    public init(user: User, groupId: GroupId, selfSignedMembershipCertificate: Membership? = nil, serverSignedMembershipCertificate: Membership? = nil, adminSignedMembershipCertificate: Membership? = nil) {
        self.user = user
        self.groupId = groupId

        self.selfSignedMembershipCertificate = selfSignedMembershipCertificate
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.adminSignedMembershipCertificate = adminSignedMembershipCertificate
    }
}
