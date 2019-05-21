public struct JoinGroupRequest: Codable {
    public let selfSignedMembershipCertificate: Certificate
    public let serverSignedAdminCertificate: Certificate?
    public let adminSignedMembershipCertificate: Certificate?

    public init(selfSignedMembershipCertificate: Certificate, serverSignedAdminCertificate: Certificate? = nil, adminSignedMembershipCertificate: Certificate? = nil) {
        self.selfSignedMembershipCertificate = selfSignedMembershipCertificate
        self.serverSignedAdminCertificate = serverSignedAdminCertificate
        self.adminSignedMembershipCertificate = adminSignedMembershipCertificate
    }
}
