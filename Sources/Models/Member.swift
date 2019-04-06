//
//  Copyright © 2018 Anbion. All rights reserved.
//  

import Foundation

public class Member {
    public let user: User
    public let groupId: GroupId

    public var userId: UserId {
        return user.userId
    }

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

extension Member: Hashable {
    public static func == (lhs: Member, rhs: Member) -> Bool {
        return lhs.userId == rhs.userId && lhs.groupId == rhs.groupId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(userId)
        hasher.combine(groupId)
    }
}
