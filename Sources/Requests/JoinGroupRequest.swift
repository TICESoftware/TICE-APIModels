public struct JoinGroupRequest: Codable {
    public let selfSignedMembershipCertificate: Membership
    public let serverSignedAdminCertificate: Membership?
    public let adminSignedMembershipCertificate: Membership?

    public init(selfSignedMembershipCertificate: Membership, serverSignedAdminCertificate: Membership? = nil, adminSignedMembershipCertificate: Membership? = nil) {
        self.selfSignedMembershipCertificate = selfSignedMembershipCertificate
        self.serverSignedAdminCertificate = serverSignedAdminCertificate
        self.adminSignedMembershipCertificate = adminSignedMembershipCertificate
    }
}
