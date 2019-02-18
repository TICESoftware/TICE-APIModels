public struct JoinGroupResponse: Codable {
    public let serverSignedMembershipCertificate: String

    public init(serverSignedMembershipCertificate: String) {
        self.serverSignedMembershipCertificate = serverSignedMembershipCertificate
    }
}
