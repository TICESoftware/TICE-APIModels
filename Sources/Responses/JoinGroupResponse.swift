public struct JoinGroupResponse: Codable {
    public let serverSignedMembershipCertificate: Membership

    public init(serverSignedMembershipCertificate: Membership) {
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
    }
}
