public struct JoinGroupRequest: Codable {
    public let selfSignedMembershipCertificate: Membership
    public let serverSignedOwnerCertificate: Membership?
    public let ownerSignedMembershipCertificate: Membership?

    public init(selfSignedMembershipCertificate: Membership, serverSignedOwnerCertificate: Membership? = nil, ownerSignedMembershipCertificate: Membership? = nil) {
        self.selfSignedMembershipCertificate = selfSignedMembershipCertificate
        self.serverSignedOwnerCertificate = serverSignedOwnerCertificate
        self.ownerSignedMembershipCertificate = ownerSignedMembershipCertificate
    }
}
