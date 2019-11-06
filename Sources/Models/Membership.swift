//
//  Copyright © 2019 Anbion. All rights reserved.
//

import Foundation

public typealias Certificate = String

public struct Membership: Codable, Hashable {
    public let userId: UserId
    public let publicSigningKey: PublicKey
    public let groupId: GroupId
    public let admin: Bool

    public var selfSignedMembershipCertificate: Certificate?
    public var serverSignedMembershipCertificate: Certificate?
    public var adminSignedMembershipCertificate: Certificate?

    public init(userId: UserId, publicSigningKey: PublicKey, groupId: GroupId, admin: Bool, selfSignedMembershipCertificate: Certificate? = nil, serverSignedMembershipCertificate: Certificate? = nil, adminSignedMembershipCertificate: Certificate? = nil) {
        self.userId = userId
        self.publicSigningKey = publicSigningKey
        self.groupId = groupId
        self.admin = admin
        self.selfSignedMembershipCertificate = selfSignedMembershipCertificate
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
        self.adminSignedMembershipCertificate = adminSignedMembershipCertificate
    }
}
