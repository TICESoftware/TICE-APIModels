public struct JoinGroupRequest: Codable {
    public let selfSignedMembershipCertificate: Membership
    public let serverSignedOwnerCertificate: Membership?
    public let adminSignedMembershipCertificate: Membership?

    public init(selfSignedMembershipCertificate: Membership, serverSignedOwnerCertificate: Membership? = nil, adminSignedMembershipCertificate: Membership? = nil) {
        self.selfSignedMembershipCertificate = selfSignedMembershipCertificate
        self.serverSignedOwnerCertificate = serverSignedOwnerCertificate
        self.adminSignedMembershipCertificate = adminSignedMembershipCertificate
    }
}
